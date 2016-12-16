require './lib/item.rb'

describe Item do
    it "el item debe estar oculto" do
        item = Item.new
        expect(item.mostrarItem).to eq " * "
    end
    
    it "el item debe mostrar el valor que tiene" do
        item = Item.new " A "
        item.seleccionarItem
        expect(item.mostrarItem).to eq " A "
    end

    it "el item debe ocultarse" do
        item = Item.new " A "
        item.seleccionarItem
        item.resetearItem
        expect(item.mostrarItem).to eq " * "
    end
end