<?php
header('Content-Type: application/json');
require_once 'connection.php';

// Query untuk mengambil semua data dari tabel buku
$query = "SELECT * FROM tb_buku";
$result = mysqli_query($conn, $query);

if ($result) {
    $books = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $books[] = array(
            'id' => $row['id_buku'],
            'judul' => $row['judul_buku'],
            'pengarang' => $row['pengarang'],
            'penerbit' => $row['penerbit'],
            'tahun_terbit' => $row['tahun_terbit'],
            'image' => $row['gambar']
        );
    }
    
    echo json_encode(array(
        'success' => true,
        'data' => $books
    ));
} else {
    echo json_encode(array(
        'success' => false,
        'message' => 'Error: ' . mysqli_error($conn)
    ));
}

mysqli_close($conn);
?> 