<?php
$conn = mysqli_connect("localhost", "root", "", "lazza_db");
if (!$conn) {
    die("Connessione fallita: " . mysqli_connect_error());
}

// Query per titoli delle canzoni e relativi album
$sql = "SELECT album.titolo AS titolo_album, canzoni.titolo AS titolo_canzone
        FROM album
        INNER JOIN canzoni ON album.id = canzoni.album_id
        ORDER BY album.id, canzoni.id";

$result = mysqli_query($conn, $sql);
if (!$result) {
    die("Errore nella query: " . mysqli_error($conn));
}

// Link Spotify per alcune canzoni
$spotify_links = [
    '100 messaggi' => 'https://open.spotify.com/track/0KrRBRzrTBHm81Xgtk8bTu',
    'panico' => 'https://open.spotify.com/intl-it/track/0SsUOrXUM2gZxVLYizZfQZ',
    'cenere' => 'https://open.spotify.com/intl-it/track/1YSlNly5I4GAGg2Toc3snK',
    'ouv3rture' => 'https://open.spotify.com/intl-it/track/6Zm34v95snSUecBXqHeu8t',
    'ZERI IN PIÙ (LOCURA)' => 'https://open.spotify.com/intl-it/track/60D8cFxq38Qbe0TeLwe6QT'
];

// Raggruppamento delle canzoni per album
$album_data = [];
while ($row = mysqli_fetch_assoc($result)) {
    $album_data[$row['titolo_album']][] = $row['titolo_canzone'];
}

mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Canzoni per Album</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #1c1c1c;
            color: #fff;
        }
        h1 {
            color: #e60000;
            text-align: center;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            background: #333;
            box-shadow: 0 0 10px rgba(0,0,0,0.5);
        }
        th, td {
            border: 1px solid #444;
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #e60000;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #444;
        }
        tr:nth-child(odd) {
            background-color: #555;
        }
        a {
            color: #ffcc00;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<h1>Canzoni per Album</h1>

<table>
    <thead>
        <tr>
            <th>Album</th>
            <th>Titolo Canzone</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $albums = array_keys($album_data);
        $num_albums = count($albums);

        for ($i = 0; $i < $num_albums; $i++) {
            $album = $albums[$i];
            $canzoni = $album_data[$album];
            $num_canzoni = count($canzoni);

            for ($j = 0; $j < $num_canzoni; $j++) {
                echo "<tr>";

                if ($j === 0) {
                    echo '<td rowspan="' . $num_canzoni . '">' . htmlspecialchars($album) . '</td>';
                }

                $canzone = $canzoni[$j];
                $c_lower = strtolower($canzone);

                if (isset($spotify_links[$c_lower])) {
                    echo '<td><a href="' . $spotify_links[$c_lower] . '" target="_blank">' . htmlspecialchars($canzone) . '</a></td>';
                } else {
                    echo '<td>' . htmlspecialchars($canzone) . '</td>';
                }

                echo "</tr>";
            }
        }
        ?>
    </tbody>
</table>

</body>
</html>
