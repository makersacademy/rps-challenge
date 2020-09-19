require_relative 'choices'



class Game
    attr_reader :player, :player_choice, :cpu_choice, :choices, :game

    def initialize(player)
        @player = player
        @player_choice = ""
        @cpu_choice = ""
        @choices = Choices.new
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
        #decide winner
    end


    def show_choice
        @cpu_choice
    end

    private 

    def set_cpu_choice
        @cpu_choice = @choices.get_choices.sample
    end

    def decide_winner

    end

    


end