<?php

add_filter( 'us_files_search_paths', 'us_child_files_search_paths' );
function us_child_files_search_paths( $us_files_search_paths ) {
    global $us_stylesheet_directory;
    array_unshift($us_files_search_paths, $us_stylesheet_directory . '/framework/');
    return $us_files_search_paths;
}
