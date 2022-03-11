class Player

    @@name = ""

    def take_name(name)
        @@name = name
    end

    def self.name
        @@name
    end

end