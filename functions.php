<!-- All PHP functions. -->

<?php
require('database/gcw_database.php');

function getComposers() {
    // Get all composers and composer data.
    global $db;
    $queryComposers = 'SELECT * FROM composers
                    LEFT JOIN composers_by_race ON composers.raceid = composers_by_race.raceid
                    LEFT JOIN genders ON composers.genderID = genders.genderid
                    LEFT JOIN race ON composers_by_race.raceid = race.raceid
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
    $queryGenders = 'SELECT genders.gender, genders.genderid, COUNT(composers.composerid) AS composers_in_gender
                FROM genders
                LEFT JOIN composers ON composers.genderid = genders.genderid
                GROUP BY genders.genderid, genders.gender';
    $statement = $db->prepare($queryGenders);
    $statement->execute();
    $genders = $statement->fetchAll();
    $statement->closeCursor();
    return $genders;
}

function getRaces() {
    global $db;
    $queryRaces = 'SELECT race.race, race.raceid, COUNT(composers.composerid) AS composers_in_race
                FROM race
                LEFT JOIN composers ON composers.raceid = race.raceid
                LEFT JOIN composers_by_race ON composers.raceid = composers_by_race.raceid
                GROUP BY race.raceid, race.race';
    $statement = $db->prepare($queryRaces);
    $statement->execute();
    $races = $statement->fetchAll();
    $statement->closeCursor();
    return $races;
}

function getSeasons() {
    // Get all seasons.
    global $db;
    $queryAllSeasons = 'SELECT DISTINCT seasons.seasonid, seasons.liturgicalseason
                        FROM seasons
                        ORDER BY seasons.seasonid';
    $statement = $db->prepare($queryAllSeasons);
    $statement->execute();
    $seasons = $statement->fetchAll();
    $statement->closeCursor();
    return $seasons;
}

function getTypes() {
    // Get all anthem types.
    global $db;
    $queryAllTypes = 'SELECT DISTINCT types.typeid, types.anthemtype
                      FROM types
                      INNER JOIN anthems on types.typeid = anthems.typeid
                      ORDER BY types.typeid';
    $statement = $db->prepare($queryAllTypes);
    $statement->execute();
    $types = $statement->fetchAll();
    $statement->closeCursor();
    return $types;
}

function getVoicings() {
    // Get all anthem voicings.
    global $db;
    $queryAllVoicings = 'SELECT DISTINCT voicing.voicingid, voicing.voicing
                         FROM voicing
                         INNER JOIN anthems ON voicing.voicingid = anthems.voicingid
                         ORDER BY voicing.voicingid';
    $statement1 = $db->prepare($queryAllVoicings);
    $statement1->execute();
    $voicings = $statement1->fetchAll();
    $statement1->closeCursor();
    return $voicings;
}

function getAnthemsByMulti() {
    // Filter the input.
    global $db;
    $composer = filter_input(INPUT_GET, 'composer');
    $race_id = filter_input(INPUT_GET, 'race_id', FILTER_VALIDATE_INT);
    $gender_id = filter_input(INPUT_GET, 'gender_id', FILTER_VALIDATE_INT);
    $queer = isset($_GET['queer']) ? 1 : 0;
    $disabled = isset($_GET['disabled']) ? 1 : 0;
    $voicing_id = filter_input(INPUT_GET, 'voicing_id', FILTER_VALIDATE_INT);
    $season_id = filter_input(INPUT_GET, 'season_id', FILTER_VALIDATE_INT);
    $type_id = filter_input(INPUT_GET, 'type_id', FILTER_VALIDATE_INT);

    // Get anthems for selected search parameters.
    $queryAnthems = 'SELECT DISTINCT
                        anthems.anthemid,
                        anthems.title,
                        anthems.typeid,
                        anthems.composerid,
                        anthems.voicingid,
                        anthems.publisherid,
                        anthems.instrument,
                        anthems.solos,
                        anthems.languageid,
                        anthems.textid,
                        anthems.scorelink,
                        anthems.difficulty,
                        anthems.duration,
                        anthems.recordinglink,
                        anthems.notes,

                        anthems_by_season.anthemid,
                        anthems_by_season.seasonid,

                        composers.composerid,
                        composers.firstname,
                        composers.lastname,
                        composers.datebirth,
                        composers.datedeath,
                        composers.country,
                        composers.genderid,
                        composers.raceid,
                        composers.website,
                        composers.queer,
                        composers.disabled,
                        composers.notes,

                        genders.genderid,
                        genders.gender,

                        languages.languageid,
                        languages.languagename,

                        publisher.publisherid,
                        publisher.publishername,
                        publisher.website,

                        race.raceid,
                        race.race,

                        seasons.seasonid,
                        seasons.liturgicalseason,

                        types.typeid,
                        types.anthemtype,

                        voicing.voicingid,
                        voicing.voicing
                    
                    FROM anthems
                    JOIN composers ON anthems.composerid = composers.composerid
                    LEFT JOIN anthems_by_season ON anthems.anthemid = anthems_by_season.anthemid
                    LEFT JOIN composers_by_race ON composers.raceid = composers_by_race.raceid
                    LEFT JOIN genders ON composers.genderid = genders.genderid
                    LEFT JOIN languages ON anthems.languageid = languages.languageid
                    LEFT JOIN publisher ON anthems.publisherid = publisher.publisherid
                    LEFT JOIN race ON composers_by_race.raceid = race.raceid
                    LEFT JOIN seasons on anthems_by_season.seasonid = seasons.seasonid
                    LEFT JOIN types ON anthems.typeid = types.typeid
                    LEFT JOIN voicing ON anthems.voicingid = voicing.voicingid
                    WHERE 1=1';

    if (!empty($composer)) {
        $queryAnthems .= ' AND composers.lastname LIKE :composer';
    }
    if ($race_id) {
        $queryAnthems .= ' AND composers.raceid = :race_id';
    }
    if ($gender_id) {
        $queryAnthems .= ' AND composers.genderid = :gender_id';
    }
    if ($queer) {
        $queryAnthems .= ' AND composers.queer = 1';
    }
    if ($disabled) {
        $queryAnthems .= ' AND composers.disabled = 1';
    }
    if ($voicing_id) {
        $queryAnthems .= ' AND anthems.voicingid = :voicing_id';
    }
    if ($season_id) {
        $queryAnthems .= ' AND anthems_by_season.seasonid = :season_id';
    }
    if ($type_id) {
        $queryAnthems .= ' AND anthems.typeid = :type_id';
    }

    $queryAnthems .= ' ORDER BY composers.lastname';
     
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
        echo '<option value="' . $race['raceid'] . '">' . 
            htmlspecialchars($race['race']) . '</option>';
    }
    echo '</select></div>';

    // Search composer by gender.
    echo '<div class="column1"><label for="gender_id">Gender</label></div>';
    echo '<div class="column2"><select name="gender_id" id="gender_id">';
    echo '<option value="">-- Select gender: --</option>';
    foreach ($genders as $gender) {
        echo '<option value="' . $gender['genderid'] . '">' . 
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
        echo '<option value="' . $voicing['voicingid'] . '">' . 
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
        echo '<option value="' . $season['seasonid'] . '">' . 
            htmlspecialchars($season['liturgicalseason']) . '</option>';
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
        echo '<option value="' . $type['typeid'] . '">' . 
            htmlspecialchars($type['anthemtype']) . '</option>';
    }
    echo '</select></div>';
}
?>