<?php
  class Conectar{
    protected $dbh;
    protected function Conexion(){
      try{
        $conectar=$this->dbh = new PDO("mysql:local=localhost;dbname=portafolio_db","root","");
        return $conectar;
      }catch(Exception $e){
        print"error: ".$e->getMessage();
        die();
      }
    }
    public function set_names(){
      return $this->dbh->query("SET NAMES 'utf8'");
    }
  }
?>