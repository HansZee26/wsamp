<?php
function getDBPath()
{
     if (file_exists('./database.json')) {
          return './database.json';
     } else if (file_exists('../database.json')) {
          return '../database.json';
     } else if (file_exists('../../database.json')) {
          return '../../database.json';
     }
     return false;
}

class JSONDatabase
{
     private $databaseFile;

     public function __construct($databaseFile)
     {
          $this->databaseFile = getDBPath();
     }

     public function set($key, $data)
     {
          $database = $this->readDatabase();
          $database[$key] = $data;
          $this->writeDatabase($database);
     }

     public function get($key)
     {
          $database = $this->readDatabase();
          return isset($database[$key]) ? $database[$key] : null;
     }

     public function del($key)
     {
          $database = $this->readDatabase();
          if (isset($database[$key])) {
               unset($database[$key]);
               $this->writeDatabase($database);
          }
     }
     public function update($key, $newData)
     {
          $database = $this->readDatabase();
          $database[$key] = isset($database[$key]) ? array_merge($database[$key], $newData) : $newData;
          $this->writeDatabase($database);
     }

     private function readDatabase()
     {
          $jsonData = file_get_contents($this->databaseFile);
          return json_decode($jsonData, true) ?: [];
     }

     private function writeDatabase($database)
     {
          $jsonData = json_encode($database, JSON_PRETTY_PRINT);
          file_put_contents($this->databaseFile, $jsonData);
     }
}
