require 'vehiculos/vehiculosClass'

RSpec.describe VehiculosClass do
  describe "Pruebas de la clase Vehiculos" do
    before :each do
      @vehiculo1 = VehiculosClass.new("3933LBL")
    end

    it "Debe existir la clase vahículos" do
      expect(@vehiculo1).to be_an_instance_of(VehiculosClass)
    end

    it "Debe existir un atributo para identificar el vehículo" do
      expect(@vehiculo1).to respond_to(:id)
    end

  end

end