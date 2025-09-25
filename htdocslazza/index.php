<?php
require_once 'lazza_db_completo.php';


$query = "SELECT * FROM album";
$result = mysqli_query($conn, $query);
?>

<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Album di Lazza</title>
    <style>
        body {
            background-image: url("img/home.jpg"); 
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
        }

        a {
            color: lightgreen;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        ul {
            font-size: 18px;
        }
    </style>
</head>
<body>

    <h1>Benvenuto nel sito degli album di Lazza</h1>

    <h2>Album disponibili:</h2>
    <ul>
        <?php while ($row = mysqli_fetch_assoc($result)): ?>
            <li><a href="album.php?id=<?php echo $row['id']; ?>"><?php echo htmlspecialchars($row['titolo']); ?></a></li>
        <?php endwhile; ?>
    </ul>

</body>
</html>
