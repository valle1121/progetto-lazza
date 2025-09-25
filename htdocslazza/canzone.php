<?php
$conn = mysqli_connect("localhost", "root", "", "lazza_db");
$id = intval($_GET['id']);
$c = mysqli_query($conn, "SELECT * FROM canzoni WHERE id = $id");
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><?= htmlspecialchars($c['titolo']) ?></title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h1><?= htmlspecialchars($c['titolo']) ?></h1>
<pre><?= htmlspecialchars($c['testo']) ?></pre>
<a href="album.php?id=<?= $c['album_id'] ?>">Torna all'album</a>
</body>
</html>
