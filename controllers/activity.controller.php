<?php
session_start();

require_once '../models/Activity.php';
$activity = new Activity();

if(isset($_GET['op'])){

  // Listar actividades
  if($_GET['op'] == 'getActivities'){
    $data = $activity->getActivities();
    if($data){
      echo json_encode($data);
    }
  }
  
  // Obtener una actividad
  if($_GET['op'] == 'getAnActivity'){
    $data = $activity->getAnActivity(["idactividad" => $_GET['idactividad']]);
    
    if($data){
      echo json_encode($data[0]);
    }
  }

  // Registrar actividad
  if($_GET['op'] == 'registerActivity'){
    $activity->registerActivity([
      "fechainicio"     => $_GET['fechainicio'],
      "fechafin"        => $_GET['fechafin'],
      "horainicio"      => $_GET['horainicio'],
      "horafin"         => $_GET['horafin'],
      "titulo"          => $_GET['titulo'],
      "descripcion"     => $_GET['descripcion'],
      "direccion"       => $_GET['direccion']
    ]);
  }

  // Actualizar actividad
  if($_GET['op'] == 'updateActivity'){
    $activity->updateActivity([
      "idactividad"     => $_GET['idactividad'],
      "fechainicio"     => $_GET['fechainicio'],
      "fechafin"        => $_GET['fechafin'],
      "horainicio"      => $_GET['horainicio'],
      "horafin"         => $_GET['horafin'],
      "titulo"          => $_GET['titulo'],
      "descripcion"     => $_GET['descripcion'],
      "direccion"       => $_GET['direccion']
    ]);
  }

  // Eliminar actividad
  if($_GET['op'] == 'deleteActivity'){
    $activity->deleteActivity(["idactividad" => $_GET['idactividad']]);
  }
}


?>