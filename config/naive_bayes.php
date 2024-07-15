<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "perpus_smkn2bangkalan";
$conn = mysqli_connect($servername, $username, $password, $dbname);;

function load_dataset($conn) {
  $dataset = array();
  $result = mysqli_query($conn, "SELECT judul, kategori FROM dataset");
  while ($row = mysqli_fetch_assoc($result)) {
      $dataset[] = array('judul' => $row['judul'], 'kategori' => $row['kategori']);
  }
  return $dataset;
}

function train_naive_bayes($dataset) {
  $total_judul = array('Non Pendidikan' => 0, 'Pendidikan' => 0);
  $word_count = array('Non Pendidikan' => array(), 'Pendidikan' => array());
  $total_words = array('Non Pendidikan' => 0, 'Pendidikan' => 0);

  foreach ($dataset as $data) {
      $kategori = $data['kategori'];
      $words = explode(' ', strtolower($data['judul']));

      foreach ($words as $word) {
          if (!isset($word_count[$kategori][$word])) {
              $word_count[$kategori][$word] = 0;
          }
          $word_count[$kategori][$word]++;
          $total_words[$kategori]++;
      }
      $total_judul[$kategori]++;
  }

  return array('total_judul' => $total_judul, 'word_count' => $word_count, 'total_words' => $total_words);
}
  
function classify_naive_bayes($model, $judul) {
    $word_prob = array('Non Pendidikan' => 0, 'Pendidikan' => 0);
    $words = explode(' ', strtolower($judul));

    foreach ($model['word_count'] as $kategori => $word_count) {
        $prob = log($model['total_judul'][$kategori] / array_sum($model['total_judul']));
        foreach ($words as $word) {
            if (isset($word_count[$word])) {
                $prob += log(($word_count[$word] + 1) / ($model['total_words'][$kategori] + count($word_count)));
            } else {
                $prob += log(1 / ($model['total_words'][$kategori] + count($word_count)));
            }
        }
        $word_prob[$kategori] = exp($prob);
    }

    $total_prob = array_sum($word_prob);
    foreach ($word_prob as $kategori => $prob) {
        $word_prob[$kategori] = $prob / $total_prob;
    }

    $_SESSION['prob'] = $word_prob;

    return array_search(max($word_prob), $word_prob);
}
?>