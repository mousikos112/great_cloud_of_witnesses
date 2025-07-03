<!--
    Last Author: Megan Coiley
    Date: 2025/04/28
    Purpose:
        This is an interactive website containing a relational database of sacred music (choral and organ) by composers whose
        identities are demographically underrepresented in the canon of Western classical music.  Its purpose is to provide 
        church musicians with information about well-written music that would be appropriate for use during the church year.
-->

<?php
require('database/gcw_database.php');
require('functions.php');

if (isset($_GET['composer']) || isset($_GET['race_id']) || isset($_GET['gender_id']) ||
    isset($_GET['queer']) || isset($_GET['disabled']) ||
    isset($_GET['voicing_id']) || isset($_GET['season_id']) || isset($_GET['type_id'])
    ) {
    $anthems = getAnthemsByMulti();
} else {
    // Default to an empty array.
    $anthems = [];
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<title>A Great Cloud of Witnesses: Results</title>
<meta charset="utf-8">
<meta name="description" content="A Great Cloud of Witnesses is an interactive website containing a relational database of 
    sacred music (choral and organ) by composers whose identities are demographically underrepresented in the canon of Western 
    classical music.">
<link rel="stylesheet" href="styles/styles.css">
</head>

<body class="container">
<div class="headernav">
    <header>
        <h1>A Great Cloud of Witnesses</h1>
    </header>

    <nav>
        <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="search.php">Search</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="contact.php">Contact</a></li>
        </ul>
    </nav>
</div>

<main>
<h2 style="display: none;">Anthems</h2>

<?php if (empty($anthems)): ?>
    <p>There are no anthems currently in our database that match your search terms.  If you have a suggestion for a 
        piece of music that matches these terms, please do suggest it!
    </p>
    <div class="single-button"><a href="suggestions.php"><button style="width: 12em;">Suggest a Piece</button></a></div>
<?php else: ?>
    <p>
    Here are the pieces of music:
    </p>
<?php 
// Logic to omit any duplicate results which may arise from multiple seasonIDs, etc.
$previous_anthemID = 0;
foreach ($anthems as $anthem) : 
    if ($previous_anthemID == $anthem['anthemid']) {
        continue;
    } else {
        $previous_anthemID = $anthem['anthemid'];
    }
?>
    <details>
        <summary>
            <!-- Here are composer and title of the piece. -->
            <?php echo htmlspecialchars($anthem['firstname']) . " " . 
                htmlspecialchars($anthem['lastname']);?> - 
            <?php echo $anthem['title'];?>
        </summary>
            <!-- Here is all additional information available about the piece. -->
            <ul>
            <?php
                // Include an if statement here - if organ solo, it should say that first.
                if ($anthem['typeID'] == 6) {
                    echo '<i>Solo Organ</i>';
                }
                if (!empty($anthem['voicing'])) {
                    echo '<li>Voicing: ' . htmlspecialchars($anthem['voicing']) . '</li>';
                }
                if (!empty($anthem['solos'])) {
                    echo '<li>Solos: ' . htmlspecialchars($anthem['solos']) . '</li>';
                }
                if (!empty($anthem['instrument'])) {
                    echo '<li>Instrumentation: ' . htmlspecialchars($anthem['instrument']) . '</li>';
                }
                if (!empty($anthem['language'])) {
                    echo '<li>Language: ' . htmlspecialchars($anthem['language']) . '</li>';
                }
                // Make sure that the 1 through 5 difficulty ranking corresponds to more useful descriptions.
                if (!empty($anthem['difficulty'])) {
                    if ($anthem['difficulty'] == 1) {
                        echo '<li>Difficulty: Easy</li>';
                    } else if ($anthem['difficulty'] == 2) {
                        echo '<li>Difficulty: Moderately easy</li>';
                    } else if ($anthem['difficulty'] == 3) {
                        echo '<li>Difficulty: Moderate</li>';
                    } else if ($anthem['difficulty'] == 4) {
                        echo '<li>Difficulty: Moderately difficult</li>';
                    } else {
                        echo '<li>Difficulty: Difficult</li>';
                    }
                }
                if (!empty($anthem['duration'])) {
                    echo '<li>Approximate duration: ' . htmlspecialchars($anthem['duration']) . '</li>';
                }
                // Links to a recording and a score if available.
                if (!empty($anthem['recordingLink'])) {
                    echo '<li><a href="' . htmlspecialchars($anthem['recordingLink']) . '" target="_blank">Recording link</a></li>';
                }
                if (!empty($anthem['scoreLink'])) {
                    echo '<li><a href="' . htmlspecialchars($anthem['scoreLink']) . '" target="_blank">Score link</a></li>';
                }
            ?>
            </ul>
    </details>
<?php endforeach; ?>
<?php endif; ?>
</main>

<footer class="footer">
    <div class="webmaster">Copyright &copy; 2025 Megan Coiley. All rights reserved.</div>
    <div class="subpages">
        <ul>
            <li><a href="suggestions.php">Suggest a piece of music</a></li>
            <li><a href="contact.php">Contact us</a></li>
        </ul>
    </div>
</footer>

</body>
</html>