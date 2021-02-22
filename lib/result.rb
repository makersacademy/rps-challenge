class Result 
    
    def initialize(player_choice, cpu_choice)
        @player_choice = player_choice
        @cpu_choice = cpu_choice
    end
    def self.create(player_choice, cpu_choice)
        @result = Result.new(player_choice, cpu_choice)
    end
    def self.instance
        @result
    end

end