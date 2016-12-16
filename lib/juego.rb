# require './lib/item.rb'

class Juego
   
   def initialize 
        @numFilas = 3
        @numColumnas = 6
        
        @juego = Array.new(@numFilas)
        (0.. @numFilas-1).each do |fila|
            @juego[fila] = Array.new(@numColumnas)
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