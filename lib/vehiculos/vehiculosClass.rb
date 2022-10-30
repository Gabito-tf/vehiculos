class VehiculosClass

    # Getters
    attr_reader :id_ , :fabricante_

    # Constructor
    def initialize(id_,fabricante_)
        @id_ , @fabricante_ = id_, fabricante_
    end

end