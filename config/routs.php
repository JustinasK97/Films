<?php
if (isset($_GET['page'])){
    switch (htmlspecialchars($_GET['page'])){
        case 'Visi':
            include ('templates/pages/all_movies.page.php');
            break;
        case 'Zanrai':
            include ('templates/pages/genres.page.php');
            break;
        case 'Paieska':
            include ('templates/pages/search.page.php');
            break;
        case 'filmu-valdymas':
            include ('pages/add_films.page.php');
            break;
        default:
    }
} else {
    include ('templates/pages/home.page.php');
}