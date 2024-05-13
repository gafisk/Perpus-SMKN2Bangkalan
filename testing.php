<?php
include 'config/conn.php';
function load_dataset($conn) {
    $dataset = array();
    $result = mysqli_query($conn, "SELECT judul, kategori FROM dataset");
    while ($row = mysqli_fetch_assoc($result)) {
        $dataset[] = array('judul' => $row['judul'], 'kategori' => $row['kategori']);
    }
    return $dataset;
}

// Latih model Naive Bayes
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

// Lakukan klasifikasi
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
        $word_prob[$kategori] = $prob;
    }

    return array_search(max($word_prob), $word_prob);
}

// Load dataset dan latih model
$dataset = load_dataset($conn);
$model = train_naive_bayes($dataset);

// Judul buku yang ingin diklasifikasikan
$judul_buku = "Buku Siswa Sejarah Indonesia";

// Klasifikasikan judul buku
$kategori_buku = classify_naive_bayes($model, $judul_buku);

echo "Kategori buku dari judul '$judul_buku' adalah: $kategori_buku";

// echo "Total Judul:\n";
// foreach ($model['total_judul'] as $kategori => $total) {
//     echo "$kategori: $total\n";
// }

// echo "\nWord Count:\n";
// foreach ($model['word_count'] as $kategori => $words) {
//     echo "$kategori:\n";
//     foreach ($words as $word => $count) {
//         echo "$word: $count\n";
//     }
// }

// echo "\nTotal Words:\n";
// foreach ($model['total_words'] as $kategori => $total) {
//     echo "$kategori: $total\n";
// }


?>