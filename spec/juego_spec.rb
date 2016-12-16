require './lib/juego.rb'

describe Juego do
    it "el juego debe inicializarse" do
        juego = Juego.new
        expect(juego.mostrarJuego).to eq "oculto"
    end

    # it "debe obtener un valor de un item" do
    #     juego = Juego.new
    #     juego.getItem 2,2
    #     expect(juego.mostrarJuego).to eq " A "
    # end
end