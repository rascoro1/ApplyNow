<?php
    require_once('config.php');
    $conn = mysqli_connect(DBHOST,DBUSER,DBPASS,DBNAME);
    $db_table = "colleges";
    $ID = $_GET['ID'];

    $Name = "";
    $Website = "";
    $Seal = "";
    $Image = "";

    $error = mysqli_connect_error();
    if($error != null){
        $output = "<p>Unable to connect to database</p>".$error;
        exit($output);
    }else{
        // One College Information
        $sql = "SELECT Name, Website, Seal, Image FROM " . $db_table . " WHERE ID = '" . $ID . "'";
        // Insert Data
        //$sql = "INSERT INTO " . $db_table . " (id, name, age, powers) VALUES ('213042', 'Iron Man', '36', 'laser beam')";
        try{
            $res = $conn->query($sql);
            $college = mysqli_fetch_assoc($res);
            $keys = array_keys($college);

            // Assigning variales from the SQL search
            $Name = $college["Name"];
            $Website = $college["Website"];
            $Seal = $college["Seal"];
            $Image = $college["Image"];
        }catch (Exception $e) {
            echo 'Caught exception: ',  $e->getMessage(), "\n";
        }


    }

    // Split $Image url into an Array splitting at the '/'
    $fragments = explode('/', $Image);
    // Take the last element in the array (This is the file name)
    $image_fname = $fragments[count($fragments)-1];




    echo '<ul class="nav nav-stacked" id="sidebar">';
    echo '  <li><div class="seachByListTitle"><h3>' . $Name . '</h3></div></li>';
    echo '  <li><img src="imgs/' . $image_fname . '"></li>';
    echo '<li><hr></li>';
    echo '<li>';
    echo '        <label class="btn btn-primary btn-xl btn-block">';
    echo '<a href="http://' . $Website . '"><h2><b>Visit Website</b></h2></a>';
    echo '        </label><br>';
    echo '</ul>';

?>