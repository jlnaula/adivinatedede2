class Item
    
    def initialize valor = " * "
        @visible = false
        @valor = valor
    end
    
    def mostrarItem
        @valor
    end
    
    def seleccionarItem
        @valor = " A "
    end
    
end