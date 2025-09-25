<?php
$conn = mysqli_connect("localhost", "root", "", "lazza_db");
if (!$conn) {
    die("Connessione fallita: " . mysqli_connect_error());
}

if (!isset($_GET['id'])) {
    echo "ID album non fornito.";
    exit;
}

$album_id = intval($_GET['id']);

$query_album = "SELECT * FROM album WHERE id = $album_id";
$result_album = mysqli_query($conn, $query_album);
$album = mysqli_fetch_assoc($result_album);

if (!$album) {
    echo "Album non trovato.";
    exit;
}

$immagini_album = [
    1 => 'img/sirio.jpg',
    2 => 'img/locura.jpg',
    3 => 'img/j.jpg'
];

$immagine_album = isset($immagini_album[$album_id]) ? $immagini_album[$album_id] : 'default.jpg';

$link_canzoni = [
    'ouv3rture' => 'https://open.spotify.com/intl-it/track/6Zm34v95snSUecBXqHeu8t?si=ec9ebb9d347b485e',
    'cenere' => 'https://open.spotify.com/intl-it/track/1YSlNly5I4GAGg2Toc3snK?si=6bfe6455e6434b53',
    'panico' => 'https://open.spotify.com/intl-it/track/0SsUOrXUM2gZxVLYizZfQZ?si=6662fe1537e34a35',
   '100 messaggi' => 'https://open.spotify.com/intl-it/track/0KrRBRzrTBHm81Xgtk8bTu?si=70a41763eb8548b0',
    'zeri in piu (locura)' => 'https://open.spotify.com/intl-it/track/60D8cFxq38Qbe0TeLwe6QT?si=89d15c1451494b37',
];
?>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title><?php echo htmlspecialchars($album['titolo']); ?></title>
    <style>
        body {
            background-image: url('<?php echo $immagine_album; ?>');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: white;
            font-family: Arial, sans-serif;
            padding: 20px;
        }

        h1 {
            color: red;
            background-color: rgba(0, 0, 0, 0.6);
            padding: 10px;
            border-radius: 5px;
        }

        h2 {
            margin-top: 40px;
            background-color: rgba(0, 0, 0, 0.6);
            padding: 10px;
            border-radius: 5px;
        }

        pre {
            background-color: rgba(0, 0, 0, 0.5);
            padding: 10px;
            border-radius: 5px;
            white-space: pre-wrap;
        }

        a {
            color: lightblue;
            text-decoration: none;
            background-color: rgba(0, 0, 0, 0.5);
            padding: 5px 10px;
            border-radius: 5px;
        }

        a:hover {
            text-decoration: underline;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

    <a href="index.php">&larr; Torna alla home</a>

    <h1><?php echo htmlspecialchars($album['titolo']); ?></h1>

    <h2>Tracce:</h2>
    <ul>
        <?php
        $query_canzoni = "SELECT * FROM canzoni WHERE album_id = $album_id";
        $result_canzoni = mysqli_query($conn, $query_canzoni);

        while ($canzone = mysqli_fetch_assoc($result_canzoni)) {
            $titolo = $canzone['titolo'];
            $titolo_norm = strtolower($titolo);
            $link = isset($link_canzoni[$titolo_norm]) ? $link_canzoni[$titolo_norm] : null;

            echo "<li><strong>" . htmlspecialchars($titolo) . "</strong>";

            if ($link) {
                echo " – <a href='" . htmlspecialchars($link) . "' target='_blank'>Ascolta</a>";
            }

            echo "<br><pre>" . htmlspecialchars($canzone['testo']) . "</pre></li>";
        }

        mysqli_close($conn);
        ?>
    </ul>

</body>
</html>
