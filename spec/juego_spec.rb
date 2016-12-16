require './lib/juego.rb'
require './lib/item.rb'

describe Juego do
    it "el juego debe inicializarse" do
        juego = Juego.new
        expect(juego.mostrarJuego).to eq " * "
    end

    it "debe obtener un valor de un item" do
        juego = Juego.new
        item = juego.getItem(2,2)
        item.seleccionarItem
        expect(item.mostrarItem).to eq " B "
    end
end