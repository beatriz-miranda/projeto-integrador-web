<?php

  class Retangulo {

    public $base;
    public $altura;

    // Orientado a Objetos
    public function calculaArea(){
      $area = ($this->base * $this->altura);
      return $area;
    }
  }

?>