<!-- All PHP functions. -->

<?php
require('database/gcw_database.php');

function getComposers() {
    // Get all composers and composer data.
    global $db;
    $queryComposers = 'SELECT * FROM composers
                    LEFT JOIN composers_by_race ON composers.raceID = composers_by_race.raceID
                    LEFT JOIN genders ON composers.genderID = genders.genderID
                    LEFT JOIN race ON composers_by_race.raceID = race.raceID
                    ORDER BY lastName';
    $statement1 = $db->prepare($queryComposers);
    $statement1->execute();
    $composers = $statement1->fetchAll();
    $statement1->closeCursor();
    return $composers;
}

function getGenders() {
    // Get all gender data.
    global $db;
    $queryGenders = 'SELECT genders.gender, genders.genderID, COUNT(composers.composerID) AS composers_in_gender
                FROM genders
                LEFT JOIN composers ON composers.genderID = genders.genderID
                GROUP BY genders.genderID, genders.gender';
    $statement = $db->prepare($queryGenders);
    $statement->execute();
    $genders = $statement->fetchAll();
    $statement->closeCursor();
    return $genders;
}

function getRaces() {
    global $db;
    $queryRaces = 'SELECT race.race, race.raceID, COUNT(composers.composerID) AS composers_in_race
                FROM race
                LEFT JOIN composers ON composers.raceID = race.raceID
                LEFT JOIN composers_by_race ON composers.raceID = composers_by_race.raceID
                GROUP BY race.raceID, race.race';
    $statement = $db->prepare($queryRaces);
    $statement->execute();
    $races = $statement->fetchAll();
    $statement->closeCursor();
    return $races;
}

function getVoicings() {
    // Get all anthem voicings.
    global $db;
    $queryAllVoicings = 'SELECT DISTINCT voicing.voicingID, voicing.voicing
                         FROM voicing
                         INNER JOIN anthems ON voicing.voicingID = anthems.voicingID
                         ORDER BY voicing.voicingID';
    $statement1 = $db->prepare($queryAllVoicings);
    $statement1->execute();
    $voicings = $statement1->fetchAll();
    $statement1->closeCursor();
    return $voicings;
}

function getSeasons() {
    // Get all seasons.
    global $db;
    $queryAllSeasons = 'SELECT DISTINCT seasons.seasonID, seasons.liturgicalSeason
                        FROM seasons
                        ORDER BY seasons.seasonID';
    $statement = $db->prepare($queryAllSeasons);
    $statement->execute();
    $seasons = $statement->fetchAll();
    $statement->closeCursor();
    return $seasons;
}

function getTypes() {
    // Get all anthem types.
    global $db;
    $queryAllTypes = 'SELECT * FROM types
                        ORDER BY typeID';
    $statement = $db->prepare($queryAllTypes);
    $statement->execute();
    $types = $statement->fetchAll();
    $statement->closeCursor();
    return $types;
}

function getAnthemsByMulti() {
    // Filter the input.
    global $db;
    $composer = filter_input(INPUT_GET, 'composer', FILTER_SANITIZE_STRING);
    $race_id = filter_input(INPUT_GET, 'race_id', FILTER_VALIDATE_INT);
    $gender_id = filter_input(INPUT_GET, 'gender_id', FILTER_VALIDATE_INT);
    $queer = isset($_GET['queer']) ? 1 : 0;
    $disabled = isset($_GET['disabled']) ? 1 : 0;
    $voicing_id = filter_input(INPUT_GET, 'voicing_id', FILTER_VALIDATE_INT);
    $season_id = filter_input(INPUT_GET, 'season_id', FILTER_VALIDATE_INT);
    $type_id = filter_input(INPUT_GET, 'type_id', FILTER_VALIDATE_INT);

    // Get anthems for selected search parameters.
    $queryAnthems = 'SELECT DISTINCT * FROM anthems
                    JOIN composers ON anthems.composerID = composers.composerID
                    LEFT JOIN composers_by_race ON composers.raceID = composers_by_race.raceID
                    LEFT JOIN genders ON composers.genderID = genders.genderID
                    LEFT JOIN race ON composers_by_race.raceID = race.raceID
                    LEFT JOIN voicing on anthems.voicingID = voicing.voicingID
                    LEFT JOIN languages on anthems.languageID = languages.languageID
                    LEFT JOIN anthems_by_season on anthems.anthemID = anthems_by_season.anthemID
                    LEFT JOIN types on anthems.typeID = types.typeID
                    WHERE 1=1';

    if (!empty($composer)) {
        $queryAnthems .= ' AND composers.lastName LIKE :composer';
    }
    if ($race_id) {
        $queryAnthems .= ' AND composers.raceID = :race_id';
    }
    if ($gender_id) {
        $queryAnthems .= ' AND composers.genderID = :gender_id';
    }
    if ($queer) {
        $queryAnthems .= ' AND composers.queer = 1';
    }
    if ($disabled) {
        $queryAnthems .= ' AND composers.disabled = 1';
    }
    if ($voicing_id) {
        $queryAnthems .= ' AND anthems.voicingID = :voicing_id';
    }
    if ($season_id) {
        $queryAnthems .= ' AND anthems_by_season.seasonID = :season_id';
    }
    if ($type_id) {
        $queryAnthems .= ' AND anthems.typeID = :type_id';
    }

    $queryAnthems .= ' ORDER BY composers.lastName';
     
    $statement = $db->prepare($queryAnthems);

    if (!empty($composer)) {
        $statement->bindValue(':composer', $composer);
    }
    if ($race_id) {
        $statement->bindValue(':race_id', $race_id);
    }
    if ($gender_id) {
        $statement->bindValue(':gender_id', $gender_id);
    }
    if ($voicing_id) {
        $statement->bindValue(':voicing_id', $voicing_id);
    }
    if ($season_id) {
        $statement->bindValue(':season_id', $season_id);
    }
    if ($type_id) {
        $statement->bindValue(':type_id', $type_id);
    }

    $statement->execute();
    $anthems = $statement->fetchAll();
    $statement->closeCursor();
    return $anthems;
}

function getSuggestions() {
    global $db;
    // Get the suggestions data that the user has just entered.
    $queryAllSuggestions = 'SELECT * FROM suggestions
                        ORDER BY suggestionID DESC
                        LIMIT 1';
    $statement1 = $db->prepare($queryAllSuggestions);
    $statement1->execute();
    $suggestions = $statement1->fetchAll();
    $statement1->closeCursor();
    return $suggestions;
}

function displayComposerFilters() {
    global $db;
    // Get all the composer data.
    $composers = getComposers();
    $races = getRaces();
    $genders = getGenders();

    echo '<div class="column1"><label for="last_name">Last Name</label></div>';
    echo '<div class="column2"><input type="text" name="composer" id="composer"></div>';

    // Search composer by race.
    echo '<div class="column1"><label for="race_id">Race</label></div>';
    echo '<div class="column2"><select name="race_id" id="race_id" class="search">';
    echo '<option value="">-- Select race: --</option>';
    foreach ($races as $race) {
        echo '<option value="' . $race['raceID'] . '">' . 
            htmlspecialchars($race['race']) . '</option>';
    }
    echo '</select></div>';

    // Search composer by gender.
    echo '<div class="column1"><label for="gender_id">Gender</label></div>';
    echo '<div class="column2"><select name="gender_id" id="gender_id">';
    echo '<option value="">-- Select gender: --</option>';
    foreach ($genders as $gender) {
        echo '<option value="' . $gender['genderID'] . '">' . 
            htmlspecialchars($gender['gender']) . '</option>';
    }
    echo '</select></div>';

    // Search for queer and/or disabled composers.
    echo '<div class="column1"><label for="queer">Queer?</label></div>';
    echo '<div class="column2"><input type="checkbox" name="queer" id="queer" value="yes"></div>';
    echo '<div class="column1"><label for="disabled">Disabled?</label></div>';
    echo '<div class="column2"><input type="checkbox" name="disabled" id="disabled" value="yes"></div>';
}

function displayVoicingFilters() {
    global $db;
    $voicings = getVoicings();
    echo '<div class="column1"><label for="voicing_id">Select a voicing:</label></div>';
    echo '<div class="column2"><select name="voicing_id" id="voicing_id" class="search">';
    echo '<option value="">-- Select voicing: --</option>';
    foreach ($voicings as $voicing) {
        echo '<option value="' . $voicing['voicingID'] . '">' . 
            htmlspecialchars($voicing['voicing']) . '</option>';
    }
    echo '</select></div>';
}

function displaySeasonFilters() {
    global $db;
    $seasons = getSeasons();
    echo '<div class="column1"><label for="season_id">Select a liturgical season:</label></div>';
    echo '<div class="column2"><select name="season_id" id="season_id" class="search">';
    echo '<option value="">-- Select season: --</option>';
    foreach ($seasons as $season) {
        echo '<option value="' . $season['seasonID'] . '">' . 
            htmlspecialchars($season['liturgicalSeason']) . '</option>';
    }
    echo '</select></div>';
}

function displayTypeFilters() {
    global $db;
    $types = getTypes();
    echo '<div class="column1"><label for="type_id">Select a type of piece:</label></div>';
    echo '<div class="column2"><select name="type_id" id="type_id" class="search">';
    echo '<option value="">-- Select type: --</option>';
    foreach ($types as $type) {
        echo '<option value="' . $type['typeID'] . '">' . 
            htmlspecialchars($type['anthemType']) . '</option>';
    }
    echo '</select></div>';
}
?>