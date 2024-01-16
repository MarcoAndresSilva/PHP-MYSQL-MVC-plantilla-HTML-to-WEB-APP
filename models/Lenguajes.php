<?php
  class Lenguajes extends Conectar {
    public function get_lenguajes(){ // en esta funcion vamos a llamar a la tabla
      $conectar=parent::Conexion();
      parent::set_names(); // para caracteres especiales que llevan tilde
      $sql="SELECT * FROM tm_lenguajes WHERE len_status =1";
      $sql=$conectar->prepare($sql);
      $sql->execute();
      return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC); // devolver lo que esta haciendo la funcion
    }
  }
?>