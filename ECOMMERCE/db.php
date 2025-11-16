<?php

    //CONNESSIONE AL DB MYSQL usando MYSQLI

    //parametri di connessione al database

    // Para Docker usar "mysql", para XAMPP/local usar "localhost"
    $host = "mysql";  //host (usar "localhost" per XAMPP, "mysql" per Docker)
    $user = "root";       //utente standard di default -> root
    $password = "rootpassword";       // password per Docker (lasciare "" per XAMPP)
    $database = "ecommerce"; //nome db su phpmyadmin

    //creo la connessione
    $conn = mysqli_connect($host, $user, $password, $database);

    //in caso di problemi usare con porta specificata :
    //$conn = mysqli_connect($host, $user, $password, $database, 3306); //o la porta configurata nel vs pc

    //verifico che la connessione funzioni 

    if(!$conn){

        //se la connessione fallisce  stampa un messaggi di errore e termina lo script
        die("Connessione fallita: " . mysqli_connect());
    }


    
?>