require_relative 'choices'

class Game

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
    end


end