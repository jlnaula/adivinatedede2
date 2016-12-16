Feature:
  Como Json 
  Quiero voltear items
  Para adivinar los grupos y ganar
  
 Scenario:Debe permitir voltear 2 items
   Given selecciono 2 items distintos
   Then debo visualizar los dos items
   
 Scenario:Debe permitir ocultar 2 items distintos despues de 2 segundos
   Given selecciono 2 items distintos
   Then debo ocultar los dos items despues de 2 segundos
   
 Scenario:Debe permitir desactivar 2 items iguales despues de 2 segundos
   Given selecciono 2 items iguales
   Then debo desactivar los dos items despues de 2 segundos