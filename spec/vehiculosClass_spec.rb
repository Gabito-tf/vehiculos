require 'vehiculos/vehiculosClass'

RSpec.describe VehiculosClass do
  describe "Pruebas de la clase Vehiculos" do
    before :each do
      @vehiculo1 = VehiculosClass.new("2933LBL","KIA",2019,"RIO",18000,["David,666666666"])
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
      #Expectativa para comprobar que el vector de propietarios es un array.
      expect(@vehiculo1.propietarios_).to be_an_instance_of(Array)
      #Expectativa para comprobar un propietario anterior del vehículo.
      expect(@vehiculo1.propietarios_[0]).to eq("David,666666666")
    end

    it "Debe existir una funcion para calcular cuantos kilometros se pueden recorrer con x galones de gasolina" do
      #Expectativa para comprobar que la función existe.
      expect(@vehiculo1).to respond_to(:calcularKilometros)
      #Expectativa de kilometros que se pueden recorrer con 10 galones estadounidenses de gasolina y un consumo de 6l/100km.
      expect(@vehiculo1::calcularKilometros("estadounidense",10,6)).to eq(630.9016666666668)
      #Expectativa de kilometros que se pueden recorrer con 10 galones imperiales de gasolina y un consumo de 6l/100km.
      expect(@vehiculo1::calcularKilometros("imperial",10,6)).to eq(757.6816666666667)
    end

    it "Debe existir una funcion para calcular el cambio de unidades de medida de la gasolina" do
      #Expectativa para comprobar que la función existe.
      expect(@vehiculo1).to respond_to(:calcularCambioUnidades)
      #Expectativa para comprobar que la función hace correctamente el cambio de litros a galones estadounidenses.
      expect(@vehiculo1::calcularCambioUnidades(10,"litros","estadounidense")).to eq(2.641720523560209)
      #Expectativa para comprobar que la función hace correctamente el cambio de litros a galones imperiales.
      expect(@vehiculo1::calcularCambioUnidades(10,"litros","imperial")).to eq(2.113378684807256)
      #Expectativa para comprobar que la función hace correctamente el cambio de galones estadounidenses a litros.
      expect(@vehiculo1::calcularCambioUnidades(10,"estadounidense","litros")).to eq(37.85410196624968)
      #Expectativa para comprobar que la función hace correctamente el cambio de galones imperiales a litros.
      expect(@vehiculo1::calcularCambioUnidades(10,"imperial","litros")).to eq(47.88025889967638)
      #Expectativa para comprobar que la función hace correctamente el cambio de galones estadounidenses a galones imperiales.
      expect(@vehiculo1::calcularCambioUnidades(10,"estadounidense","imperial")).to eq(8.386414253897551)
      #Expectativa para comprobar que la función hace correctamente el cambio de galones imperiales a galones estadounidenses.
      expect(@vehiculo1::calcularCambioUnidades(10,"imperial","estadounidense")).to eq(1.2010050251256282)
    end

  end

end