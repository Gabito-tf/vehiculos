require 'vehiculos/vehiculosClass'

RSpec.describe VehiculosClass do
  describe "Pruebas de la clase Vehiculos" do
    before :each do
      @vehiculo1 = VehiculosClass.new("2933LBL","KIA")
    end

    it "Debe existir la clase vahículos" do
      expect(@vehiculo1).to be_an_instance_of(VehiculosClass)
    end

    it "Debe existir un atributo para identificar el vehículo" do
      expect(@vehiculo1.id_).not_to be nil
      expect(@vehiculo1.id_).to eq("2933LBL")
    end

    it "Debe existir un atributo para el fabricante del vehículo" do
      expect(@vehiculo1.fabricante).not_to be nil
      expect(@vehiculo1.fabricante).to eq("KIA")
    end

  end

end