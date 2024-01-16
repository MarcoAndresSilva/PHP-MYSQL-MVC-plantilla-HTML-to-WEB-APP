<?php
  class Socialmedia extends Conectar {
    public function get_socialmedia(){ // en esta funcion vamos a llamar a la tabla
      $conectar=parent::Conexion();
      parent::set_names(); // para caracteres especiales que llevan tilde
      $sql="SELECT * FROM tm_socialmedia WHERE sm_status =1";
      $sql=$conectar->prepare($sql);
      $sql->execute();
      return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC); // devolver lo que esta haciendo la funcion
    }
  }
?>