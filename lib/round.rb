class Round
    attr_reader :player_1_name, :player_1_shape, :computer_shape
    def initialize(options)
        @player_1_name = options["player_1_name"]
        @player_1_shape = options["player_1_shape"]
        @computer_shape = options["computer_shape"]
    end
end