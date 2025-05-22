<!--
    Last Author: Megan Coiley
    Date: 2025/04/24
    Purpose:
        This is an interactive website containing a relational database of sacred music (choral and organ) by composers whose
        identities are demographically underrepresented in the canon of Western classical music.  Its purpose is to provide 
        church musicians with information about well-written music that would be appropriate for use during the church year.
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>A Great Cloud of Witnesses</title>
<meta charset="utf-8">
<meta name="description" content="A Great Cloud of Witnesses is an interactive website containing a relational database of 
    sacred music (choral and organ) by composers whose identities are demographically underrepresented in the canon of Western 
    classical music.">
<link rel="stylesheet" href="styles/styles.css">
</head>

<body>
<div class="headernav">
    <header>
        <h1>A Great Cloud of Witnesses</h1>
    </header>

    <nav>
        <ul>
            <li><a href="../index.php">Home</a></li>
            <li><a href="../search.php">Search</a></li>
            <li><a href="../about.html">About</a></li>
            <li><a href="../contact.php">Contact</a></li>
        </ul>
    </nav>
</div>

<main>
<h2>Database Error</h2>
    <p>There was an error connecting to the database.</p>
    <p>Error message: <?php echo $error_message; ?></p>
    <p>&nbsp;</p>
</main>

<footer>Copyright &copy; 2025 Megan Coiley. All rights reserved.</footer>
</body>
</html>