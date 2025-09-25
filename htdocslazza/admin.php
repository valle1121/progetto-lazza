<?php
$conn = mysqli_connect("localhost", "root", "", "lazza_db");
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $titolo = $_POST['titolo'];
    $testo = $_POST['testo'];
    $album_id = intval($_POST['album_id']);
    mysqli_query($conn, "INSERT INTO canzoni (titolo, testo, album_id) VALUES ('$titolo', '$testo', $album_id)");
}
$albums = mysqli_query($conn, "SELECT * FROM album");
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin - Aggiungi Canzone</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h1>Aggiungi una nuova canzone</h1>
<form method="POST">
    Titolo: <input type="text" name="titolo" required><br>
    Testo: <textarea name="testo" required></textarea><br>
    Album: <select name="album_id">
        <?php while ($album = $albums): ?>
            <option value="<?= $album['id'] ?>"><?= htmlspecialchars($album['titolo']) ?></option>
        <?php endwhile; ?>
    </select><br>
    <button type="submit">Aggiungi</button>
</form>
<a href="index.php">Torna alla home</a>
</body>
</html>
