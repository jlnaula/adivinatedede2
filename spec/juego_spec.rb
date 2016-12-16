require './lib/juego.rb'

describe Juego do
    it "el juego debe inicializarse" do
        juego = Juego.new
        expect(juego.mostrarJuego).to eq "oculto"
    end

end