class Player

    @@name = ""

    def self.take_name(name)
        @@name = name
    end

    def self.name
        @@name
    end

end
