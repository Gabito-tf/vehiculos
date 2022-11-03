class VehiculosClass

    # Getters
    attr_reader :id_ , :fabricante_, :ano_, :modelo_, :precio_, :propietarios_

    # Constructor
    def initialize(id_,fabricante_,ano_,modelo_,precio_,propietarios_)
        # Atributos
        @id_ , @fabricante_, @modelo_, @propietarios_ = id_, fabricante_, modelo_, propietarios_
        # Comprobación de que el año es un valor entre 1900 y 2022.
        if ano_ >= 1900 && ano_ <= 2022
            @ano_ = ano_
        else
            raise ArgumentError, "El año debe estar entre 1900 y 2022."
        end
        # Comprobación de que el precio es un valor mayor que 0.
        if precio_ > 0
            @precio_ = precio_
        else
            raise ArgumentError, "El precio debe ser mayor que 0."
        end
        
    end

    # Función para calcular los kilometros que se pueden recorrer con x galones de gasolina.
    def calcularKilometros(tipoGalon,galones,consumo)
        litros = 0
        if tipoGalon == "imperial"
            litros = galones * 4.54609
        end
        if tipoGalon == "estadounidense"
            litros = galones * 3.78541
        end
        if tipoGalon != "imperial" && tipoGalon != "estadounidense"
            raise ArgumentError, "El tipo de galón debe ser imperial o estadounidense."
        end
        return (litros * 100) / consumo
    end

    # Función para cambio de unidades de medida.
    def calcularCambioUnidades(cantidad, unidadEntrada, unidadSalida)
        # Comprobación de que la cantidad es un valor mayor que 0.
        if cantidad < 0
            raise ArgumentError, "La cantidad debe ser mayor que 0."
        end
        # Comprobación de que las unidades de entrada y salida son imperial, estadounidense o litros.
        if unidadEntrada != "imperial" && unidadEntrada != "estadounidense" && unidadEntrada != "litros"
            raise ArgumentError, "La unidad de entrada debe ser imperial, estadounidense o litros."
        end
        if unidadSalida != "imperial" && unidadSalida != "estadounidense" && unidadSalida != "litros"
            raise ArgumentError, "La unidad de salida debe ser imperial, estadounidense o litros."
        end

        # Conversión de unidades.
        if unidadEntrada == "litros" && unidadSalida == "imperial"
            return cantidad * 0.219969
        end
        if unidadEntrada == "litros" && unidadSalida == "estadounidense"
            return cantidad * 0.264172
        end
        if unidadEntrada == "imperial" && unidadSalida == "litros"
            return cantidad * 4.54609
        end
        if unidadEntrada == "imperial" && unidadSalida == "estadounidense"
            return cantidad * 1.20095
        end
        if unidadEntrada == "estadounidense" && unidadSalida == "litros"
            return cantidad * 3.78541
        end
        if unidadEntrada == "estadounidense" && unidadSalida == "imperial"
            return cantidad * 0.832674
        end
        return cantidad
    end
end