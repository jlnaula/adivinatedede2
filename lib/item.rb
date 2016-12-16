class Item
    
    def initialize 
        @visible = false
        @valor = "oculto"
    end
    
    def mostrarItem
        @valor
    end
    
    def seleccionarItem
        @valor = "A"
    end
    
end