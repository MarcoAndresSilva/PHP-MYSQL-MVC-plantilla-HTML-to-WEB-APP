<?php
  class Cursos extends Conectar {
    public function get_cursos_destacados(){ // en esta funcion vamos a llamar a la tabla
      $conectar=parent::Conexion();
      parent::set_names(); // para caracteres especiales que llevan tilde
      $sql="SELECT * FROM `tm_cursos` WHERE cur_destac = 1 AND cur_status = 1";
      $sql=$conectar->prepare($sql);
      $sql->execute();
      return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC); // devolver lo que esta haciendo la funcion
    }

     public function get_curso(){ // en esta funcion vamos a llamar a la tabla
      $conectar=parent::Conexion();
      parent::set_names(); // para caracteres especiales que llevan tilde
      $sql="SELECT * FROM `tm_cursos` WHERE cur_destac = 0 AND cur_status = 1;";
      $sql=$conectar->prepare($sql);
      $sql->execute();
      return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC); // devolver lo que esta haciendo la funcion
    }

  }
?>