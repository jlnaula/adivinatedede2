# require './lib/item.rb'

class Juego
   
   def initialize 
        @numFilas = 6
        @numColumnas = 3
        
        (0.. @numFilas-1).each do |fila|
            (0.. @numColumnas-1).each do |columna|
                item = Item.new
                # @juego[fila][columna] = item
            end
        end
    end
    
    def mostrarJuego
        "oculto"
    end
    
    def getItem fila, columna
        item = @juego[fila][columna]
        return item
    end
    
    
end