Feature:
  Como Json 
  Quiero visualizar el tablero
  Para empezar a jugar
  
 Scenario:Debe tener el titulo "Adivinatedede"
   Given abro aplicacion
   Then debo visualizar "Adivinatedede"
   
Scenario: Debe visualizar el item contenido en el boton
    Given abro aplicacion
    Then debo visualizar 18 botones
      
Scenario: Debe visualizar el item contenido en el boton
    Given abro aplicacion
    When selecciono un boton
    Then debo visualizar el item contenido en el boton  
   
   
   