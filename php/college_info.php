<?php
    require_once('config.php');
    $conn = mysqli_connect(DBHOST,DBUSER,DBPASS,DBNAME);
    $db_table = "colleges";
    $ID = $_GET['ID'];

    $error = mysqli_connect_error();
    if($error != null){
        $output = "<p>Unable to connect to database</p>".$error;
        exit($output);
    }else{
        // One College Information
        $sql = "SELECT * FROM " . $db_table . " WHERE ID = '" . $ID . "'";
        // Insert Data
        //$sql = "INSERT INTO " . $db_table . " (id, name, age, powers) VALUES ('213042', 'Iron Man', '36', 'laser beam')";
        try{
            $res = $conn->query($sql);
            $college = mysqli_fetch_assoc($res);
            $keys = array_keys($college);
        }catch (Exception $e) {
            echo 'Caught exception: ',  $e->getMessage(), "\n";
        }
        //var_dump($keys);
        //echo print_r($college);
        $website = "";
        $seal = "";
        $image = "";

        $i = 0;
        echo '<table class="table table-bordered"><tbody>';
        foreach ($keys as $key) {
            if($key == "ID"){

            }else if($key == "Website"){
                $website = $college[$key];
            }else if($key == "Seal"){
                $seal = $college[$key];
            }else if($key == "Image"){
                $image = $college[$key];
            }else if($college[$key] == ""){
                
            }
            else{
                echo "<tr><td>$key</td><td>$college[$key]</td></tr>";
            }
        }
        echo "</tbody</table>";
    }
?>
