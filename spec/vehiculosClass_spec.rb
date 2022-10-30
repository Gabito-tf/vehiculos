require 'vehiculos/vehiculosClass'

RSpec.describe VehiculosClass do
  describe "Pruebas de la clase Vehiculos" do
    before :each do
      @vehiculo1 = VehiculosClass.new("2933LBL","KIA",2019,"RIO",18000)
    end

    it "Debe existir la clase vahículos" do
      expect(@vehiculo1).to be_an_instance_of(VehiculosClass)
    end

    it "Debe existir un atributo para identificar el vehículo" do
      #Expectativa para comprobar que el atributo id_ no es nulo."
      expect(@vehiculo1.id_).not_to be nil
      #Expectativa para comprobar que el atributo id_ es una matrícula."
      expect(@vehiculo1.id_).to eq("2933LBL")
    end

    it "Debe existir un atributo para el fabricante del vehículo" do
      #Expectativa para comprobar que el fabricante no es nulo.
      expect(@vehiculo1.fabricante_).not_to be nil
      #Expectativa para comprobar que el fabricante es KIA.
      expect(@vehiculo1.fabricante_).to eq("KIA")
    end

    it "Debe existir un atributo para el año de fabricación del vehículo" do
      #Expectativa para comprabar que el año de fabricación no es nulo.
      expect(@vehiculo1.ano_).not_to be nil
      #Expectativa para comprobar si el año es mayor que 1900 y menor que 2022.
      expect(@vehiculo1.ano_).to be_between(1900,2022)
    end

    it "Debe existir un atributo para el modelo del vehículo" do
      #Expectativa para comprobar que el modelo no es nulo.
      expect(@vehiculo1.modelo_).not_to be nil
      #Expectativa para comprobar que el modelo es RIO.
      expect(@vehiculo1.modelo_).to eq("RIO")
    end

    it "Debe existir un atributo para el precio del vehículo" do
      #Expectativa para comprobar que el precio no es nulo.
      expect(@vehiculo1.precio_).not_to be nil
      #Expectativa para comprobar que el precio es mayor que 0.
      expect(@vehiculo1.precio_).to be > 0
    end

    it "Debe existir un vector con los propieratios anteriores del vehículo, así como el nombre y el teléfono de cada uno" do
      #Expectativa para comprobar que existe un vector con los propietarios.
      expect(@vehiculo1.propietarios_).to be_an_instance_of(VehiculosClass)
      #Expectativa para comprobar que el vector de propietarios es un array.
      expect(@vehiculo1.propietarios_).to be_an_instance_of(Array)
      #Expectativa para comprobar un propietario anterior del vehículo.
      expect(@vehiculo1.propietarios_[0]).to eq("David, 666666666")
    end

  end

end