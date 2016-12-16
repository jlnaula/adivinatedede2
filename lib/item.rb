class Item
    DESACTIVADO = "   "
    OCULTO = " * "
    def initialize valor = OCULTO
        @activado = true
        @visible = false
        @valor = valor
    end
    
    def mostrarItem
        if @activado == false
            DESACTIVADO
        elsif @visible 
            @valor
        else
            OCULTO
        end
    end
    
    def getValor 
        return @valor
    end
    
    def seleccionarItem
        @visible = true
    end
    
    def resetearItem
        @visible = false
    end
    
    def desactivarItem
        @activado = false
    end
end