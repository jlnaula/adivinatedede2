Feature:
  Como Json 
  Quiero visualizar el tablero
  Para empezar a jugar
  
 Scenario:   Debe tener el titulo "Adivinatedede"
   Given abro aplicacion
   Then debo visualizar "Adivinatedede"
   
  Scenario: Debe visualizar un tablero de 3x6 items
    Given abro aplicacion
    Then debo visualizar 18 botones
   
   
   
   
   
   