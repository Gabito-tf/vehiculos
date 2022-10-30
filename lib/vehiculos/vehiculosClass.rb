class VehiculosClass

    # Getters
    attr_reader :id_ , :fabricante_, :ano_, :modelo_

    # Constructor
    def initialize(id_,fabricante_,ano_,modelo_)
        # Atributos
        @id_ , @fabricante_, @modelo_ = id_, fabricante_, modelo_
        # Comprobación de que el año es un valor entre 1900 y 2022.
        if ano_ >= 1900 && ano_ <= 2022
            @ano_ = ano_
        else
            raise ArgumentError, "El año debe estar entre 1900 y 2022."
        end
        
    end

end