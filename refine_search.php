<!--
    Last Author: Megan Coiley
    Date: 2025/04/28
    Purpose:
        This page allows a user to refine their search.
-->

<?php
    require('functions.php');
    // Get the data from the search form.
    $searchAnthemsBy = filter_input(INPUT_POST, 'searchAnthemsBy');
?>

<!DOCTYPE html>
<html lang="en">
<head>
<title>A Great Cloud of Witnesses: Refine Search</title>
<meta charset="utf-8">
<meta name="description" content="A Great Cloud of Witnesses is an interactive website containing a relational database of 
    sacred music (choral and organ) by composers whose identities are demographically underrepresented in the canon of Western 
    classical music.">
<link rel="stylesheet" href="styles/styles.css">
<script src="functions.js"></script>
</head>

<body>
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
<div class="main-form">
    <p>
    <?php
    if ($searchAnthemsBy == 'composer') {
        // Get all the composer data.
        $composers = getComposers();
        $races = getRaces();
        $genders = getGenders();

        // A more more intense composer search form.
        echo '<form action="results.php" method="get" id="composer_search">';
        echo '<label for="last_name">Last Name</label>';
        echo '<input type="text" name="composer" id="composer">';

        // Search composer by race.
        echo '<label for="race_id">Race</label>';
        echo '<select name="race_id" id="race_id">';
        echo '<option>Select race</option>';
        foreach ($races as $race) {
            if ($race['composers_in_race'] > 0) {
            echo '<option value="' . $race['raceID'] . '">' . 
                htmlspecialchars($race['race']) . '</option>';
            }
        }
        echo '</select>';

        // Search composer by gender.
        echo '<label for="gender_id">Gender</label>';
        echo '<select name="gender_id" id="gender_id">';
        echo '<option>Select gender</option>';
        foreach ($genders as $gender) {
            if ($gender['composers_in_gender'] > 0) {
            echo '<option value="' . $gender['genderID'] . '">' . 
                htmlspecialchars($gender['gender']) . '</option>';
            }
        }
        echo '</select>';

        // Search for queer and/or disabled composers.
        echo '<label for="queer">Queer?</label>';
        echo '<input type="checkbox" name="queer" id="queer" value="yes">';
        echo '<label for="disabled">Disabled?</label>';
        echo '<input type="checkbox" name="disabled" id="disabled" value="yes">';

        // Option to refine the search further.
        echo '<label class="column1" for="refine_search_further">Would you like to refine your search further?</label>';
        echo '<input class="column2" type="checkbox" name="refine_search_further" id="refine_search_further" 
            value="yes" onclick="showFilters()">';
        echo '<div id="show_filters">';

        // Type of piece.
        echo '<div class="column1"><label for="display_type_filters">Does the type of piece matter for your search?</label></div>';
        echo '<div class="column2"><input type="checkbox" name="display_type_filters" id="display_type_filters" 
            value="yes" onclick="showTypeFilters()"></div>';
        // If yes, do the following:
        echo '<div id="show_type_filters" style="display: none; grid-column: 1 / span 2;">';
        displayTypeFilters();
        echo '</div>';

        // Liturgical season for piece.
        echo '<div class="column1"><label for="display_season_filters">Does the liturgical season matter for your search?</label></div>';
        echo '<div class="column2"><input type="checkbox" name="display_season_filters" id="display_season_filters" 
            value="yes" onclick="showSeasonFilters()"></div>';
        // If yes, do the following:
        echo '<div id="show_season_filters" style="display: none; grid-column: 1 / span 2;">';
        displaySeasonFilters();
        echo '</div>';

        // Voicing of piece.
        echo '<div class="column1"><label for="display_voicing_filters">Does the voicing of the piece matter for your search?</label></div>';
        echo '<div class="column2"><input type="checkbox" name="display_voicing_filters" id="display_voicing_filters" 
            value="yes" onclick="showVoicingFilters()"></div>';
        // If yes, do the following:
        echo '<div id="show_voicing_filters" style="display: none; grid-column: 1 / span 2;">';
        displayVoicingFilters();
        echo '</div>';

        // Close out the div.
        echo '</div>';
        echo '<br>';

        // Submit the form.
        echo '<input type="submit" value="Search Composers">';
        echo '</form>';
    } else if ($searchAnthemsBy == 'type') {
        // A form that has the user search for the type of anthem.
        $types = getTypes();
        echo '<form action="results.php" method="get">';
        echo '<label class="column1" for="type_id">Select a type of piece:</label>';
        echo '<select name="type_id" id="type_id">';
        foreach ($types as $type) {
            echo '<option value="' . $type['typeID'] . '">' . 
                htmlspecialchars($type['anthemType']) . '</option>';
        }
        echo '</select>';

        // Option to refine the search further.
        echo '<label class="column1" for="refine_search_further">Would you like to refine your search further?</label>';
        echo '<input class="column2" type="checkbox" name="refine_search_further" id="refine_search_further" 
            value="yes" onclick="showFilters()">';
        echo '<div id="show_filters">';

        // Liturgical season for piece.
        echo '<div class="column1"><label for="display_season_filters">Does the liturgical season matter for your search?</label></div>';
        echo '<div class="column2"><input type="checkbox" name="display_season_filters" id="display_season_filters" 
            value="yes" onclick="showSeasonFilters()"></div>';
        // If yes, do the following:
        echo '<div id="show_season_filters" style="display: none; grid-column: 1 / span 2;">';
        displaySeasonFilters();
        echo '</div>';

        // Voicing of piece.
        echo '<div class="column1"><label for="display_voicing_filters">Does the voicing of the piece matter for your search?</label></div>';
        echo '<div class="column2"><input type="checkbox" name="display_voicing_filters" id="display_voicing_filters" 
            value="yes" onclick="showVoicingFilters()"></div>';
        // If yes, do the following:
        echo '<div id="show_voicing_filters" style="display: none; grid-column: 1 / span 2;">';
        displayVoicingFilters();
        echo '</div>';

        // Composer of piece.
        echo '<div class="column1"><label for="display_composer_filters">Does the identity of the composer matter for your search?</label></div>';
        echo '<div class="column2"><input type="checkbox" name="display_composer_filters" id="display_composer_filters" 
            value="yes" onclick="showComposerFilters()"></div>';
        // If yes, do the following;
        echo '<div id="show_composer_filters" style="display: none; grid-column: 1 / span 2;">';
        displayComposerFilters();
        echo '</div>';

        // Close out the section.
        echo '</div>';
        echo '<br>';

        // Submit the form.
        echo '<input type="submit" value="Search by Type">';
        echo '</form>';
    } else if ($searchAnthemsBy == 'season') {
        // A form that has the user search by liturgical season.
        $seasons = getSeasons();
        echo '<form action="results.php" method="get">';
        echo '<label class="column1" for="season_id">Select a liturgical season:</label>';
        echo '<select name="season_id" id="season_id">';
        foreach ($seasons as $season) {
            echo '<option value="' . $season['seasonID'] . '">' . 
                htmlspecialchars($season['liturgicalSeason']) . '</option>';
        }
        echo '</select>';

        // Option to refine the search further.
        echo '<label class="column1" for="refine_search_further">Would you like to refine your search further?</label>';
        echo '<input class="column2" type="checkbox" name="refine_search_further" id="refine_search_further" 
            value="yes" onclick="showFilters()">';
        echo '<div id="show_filters">';

        // Type of piece.
        echo '<div class="column1"><label for="display_type_filters">Does the type of piece matter for your search?</label></div>';
        echo '<div class="column2"><input type="checkbox" name="display_type_filters" id="display_type_filters" 
            value="yes" onclick="showTypeFilters()"></div>';
        // If yes, do the following:
        echo '<div id="show_type_filters" style="display: none; grid-column: 1 / span 2;">';
        displayTypeFilters();
        echo '</div>';

        // Voicing of piece.
        echo '<div class="column1"><label for="display_voicing_filters">Does the voicing of the piece matter for your search?</label></div>';
        echo '<div class="column2"><input type="checkbox" name="display_voicing_filters" id="display_voicing_filters" 
            value="yes" onclick="showVoicingFilters()"></div>';
        // If yes, do the following:
        echo '<div id="show_voicing_filters" style="display: none; grid-column: 1 / span 2;">';
        displayVoicingFilters();
        echo '</div>';

        // Composer of piece.
        echo '<div class="column1"><label for="display_composer_filters">Does the identity of the composer matter for your search?</label></div>';
        echo '<div class="column2"><input type="checkbox" name="display_composer_filters" id="display_composer_filters" 
            value="yes" onclick="showComposerFilters()"></div>';
        // If yes, do the following;
        echo '<div id="show_composer_filters" style="display: none; grid-column: 1 / span 2;">';
        displayComposerFilters();
        echo '</div>';

        // Close out the section.
        echo '</div>';
        echo '<br>';

        // Submit the form.
        echo '<input type="submit" value="Search by Season">';
        echo '</form>';
    } else if ($searchAnthemsBy == 'voicing') {
        // A form that has the user search by voicing.
        $voicings = getVoicings();
        echo '<form action="results.php" method="get">';
        echo '<label class="column1" for="voicing_id">Select a voicing:</label>';
        echo '<select name="voicing_id" id="voicing_id">';
        foreach ($voicings as $voicing) {
            echo '<option value="' . $voicing['voicingID'] . '">' . 
                htmlspecialchars($voicing['voicing']) . '</option>';
        }
        echo '</select>';

        // Option to refine the search further.
        echo '<label class="column1" for="refine_search_further">Would you like to refine your search further?</label>';
        echo '<input class="column2" type="checkbox" name="refine_search_further" id="refine_search_further" 
            value="yes" onclick="showFilters()">';
        echo '<div id="show_filters">';

        // Type of piece.
        echo '<div class="column1"><label for="display_type_filters">Does the type of piece matter for your search?</label></div>';
        echo '<div class="column2"><input type="checkbox" name="display_type_filters" id="display_type_filters" 
            value="yes" onclick="showTypeFilters()"></div>';
        // If yes, do the following:
        echo '<div id="show_type_filters" style="display: none; grid-column: 1 / span 2;">';
        displayTypeFilters();
        echo '</div>';

        // Liturgical season for piece.
        echo '<div class="column1"><label for="display_season_filters">Does the liturgical season matter for your search?</label></div>';
        echo '<div class="column2"><input type="checkbox" name="display_season_filters" id="display_season_filters" 
            value="yes" onclick="showSeasonFilters()"></div>';
        // If yes, do the following:
        echo '<div id="show_season_filters" style="display: none; grid-column: 1 / span 2;">';
        displaySeasonFilters();
        echo '</div>';

        // Composer of piece.
        echo '<div class="column1"><label for="display_composer_filters">Does the identity of the composer matter for your search?</label></div>';
        echo '<div class="column2"><input type="checkbox" name="display_composer_filters" id="display_composer_filters" 
            value="yes" onclick="showComposerFilters()"></div>';
        // If yes, do the following;
        echo '<div id="show_composer_filters" style="display: none; grid-column: 1 / span 2;">';
        displayComposerFilters();
        echo '</div>';

        // Close out the section.
        echo '</div>';
        echo '<br>';

        // Submit the form.
        echo '<input class="column2" type="submit" value="Search by Voicing">';
        echo '</form>';
    }
    ?>
    </p>
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