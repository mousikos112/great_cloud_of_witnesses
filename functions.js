/* All JavaScript functions */

function showFilters() {
    let filters = document.getElementById("show_filters");
    let checkbox = document.getElementById("refine_search_further");
    filters.style.display = checkbox.checked ? "grid" : "none";
}

function showTypeFilters() {
    let showFilters = document.getElementById('show_type_filters');
    showFilters.style.display = showFilters.style.display === 'none' ? 'grid' : 'none';
}

function showSeasonFilters() {
    let showFilters = document.getElementById('show_season_filters');
    showFilters.style.display = showFilters.style.display === 'none' ? 'grid' : 'none';
}

function showVoicingFilters() {
    let showFilters = document.getElementById('show_voicing_filters');
    showFilters.style.display = showFilters.style.display === 'none' ? 'grid' : 'none';
}

function showComposerFilters() {
    let showFilters = document.getElementById('show_composer_filters');
    showFilters.style.display = showFilters.style.display === 'none' ? 'grid' : 'none';
}