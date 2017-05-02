require './lib/computer.rb'

class Game
  attr_reader :player, :choice, :robo_choice

  WEAPON = ['rock', 'paper', 'scissors']

  def initialize(player)
    @player = player
  end

  def self.new_game(player)
    @game = Game.new(player)
    @choice = nil
  end

  def self.current_game
    @game
  end

  def define_choice(choice)
    @choice = choice
  end

  def robo_choice(robo_choice = Computer.new.robo_choice)
    @robo_choice = robo_choice
  end

  def result
    if @choice == @robo_choice
      :draw
    elsif robo_win?
      :lose
    elsif you_win?
      :win
    else
      raise 'Oops, something went wrong'
    end
  end

  def robo_win?
    @robo_choice == 'rock' && @choice == 'scissors' ||
    @robo_choice == 'scissors' && @choice == 'paper' ||
    @robo_choice == 'paper' && @choice == 'rock'
  end

  def you_win?
    @choice == 'rock' && @robo_choice == 'scissors' ||
    @choice == 'scissors' && @robo_choice == 'paper' ||
    @choice == 'paper' && @robo_choice == 'rock'
  end
end
