<!--
    Last Author: Megan Coiley
    Date: 2025/04/23
    Purpose:
        This is an interactive website containing a relational database of sacred music (choral and organ) by composers whose
        identities are demographically underrepresented in the canon of Western classical music.  Its purpose is to provide 
        church musicians with information about well-written music that would be appropriate for use during the church year.
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>A Great Cloud of Witnesses: Contact Us</title>
<meta charset="utf-8">
<meta name="description" content="A Great Cloud of Witnesses is an interactive website containing a relational database of 
    sacred music (choral and organ) by composers whose identities are demographically underrepresented in the canon of Western 
    classical music.">
<link rel="stylesheet" href="styles/styles.css">
</head>

<body class="container">
<div class="headernav">
    <header>
        <h1><a href="index.php">A Great Cloud of Witnesses</a></h1>
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
<h2>Get in Touch</h2>
<p>
    Required fields are indicated by asterisk. (*)
</p>

<div class="main-form">
<form class="main-form" method="post" action="mailto:coileymegan@student.ccm.edu" enctype="text/plain">
    <label for="name">* Name</label>
        <input type="text" name="name" id="name" required>
    <label for="subject">Subject</label>
        <input type="text" name="subject" id="subject">
    <label for="message">* Message</label>
        <textarea name="message" id="message" rows="6" cols="20"></textarea>
    <input type="submit" value="Submit Message">
</form>
</div>
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