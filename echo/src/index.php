 <?php 
    $content = file_get_contents('php://input');
    echo $content;
    error_log($content); 
 ?> 
