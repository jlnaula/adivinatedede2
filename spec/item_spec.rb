require './lib/item.rb'

describe Item do
    it "el item debe estar oculto" do
        item = Item.new
        expect(item.mostrarItem).to eq "oculto"
    end
    
    it "el item debe mostrar el valor que tiene" do
        item = Item.new
        item.seleccionarItem
        expect(item.mostrarItem).to eq "A"
    end

end