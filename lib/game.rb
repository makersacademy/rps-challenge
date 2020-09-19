require_relative 'choices'



class Game
    attr_reader :player, :player_choice, :cpu_choice, :choices, :game, :result

    def initialize(player)
        @player = player
        @player_choice = ""
        @cpu_choice = ""
        @choices = Choices.new
        @result = ""
    end

    def show_choices
        @choices.get_choices
    end

    def self.instance
        @game
    end

    def self.create(player)
        @game = Game.new(player)
    end

    def set_player_choice(choice)
        @player_choice = choice
        set_cpu_choice
        decide_winner
    end

def get_result
@result
end


    def show_choice
        @cpu_choice
    end

    private 

    def set_cpu_choice
        @cpu_choice = @choices.get_choices.sample
    end

    def decide_winner
        if @player_choice == @cpu_choice
            @result ="Draw"
        end
    end

    


end