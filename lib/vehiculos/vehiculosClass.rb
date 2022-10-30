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

end