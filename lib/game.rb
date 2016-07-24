require_relative 'player'

class Game

attr_reader :player, :computer, :result, :player_choice, :comp_choice

    def self.create(player, computer)
      @game = Game.new(player, computer)
    end

    def self.instance
      @game
    end

    def initialize(player, computer)
      @player = player
      @computer = computer
      @weapon = ['rock', 'paper', 'scissors']
    end

    def reset
      @result = nil
    end

    def comp_choose
      @comp_choice = @weapon.sample
    end

    def rock
      reset
      comp_choose
      @player_choice = 'rock'
      win if @comp_choice == 'scissors'
      lose if @comp_choice == 'paper'
    end

    def paper
      reset
      comp_choose
      @player_choice = 'paper'
      win if @comp_choice == 'rock'
      lose if @comp_choice == 'scissors'
    end

    def scissors
      reset
      comp_choose
      @player_choice = 'scissors'
      win if @comp_choice == 'paper'
      lose if @comp_choice == 'rock'
    end

    def win
      @player.points += 1
      @result = true
    end

    def lose
      @computer.points += 1
      @result = false
    end
end
