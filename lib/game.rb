class Game

  require 'computer'

  attr_reader :player_choice

  def self.new_game(choice)
    @game = Game.new(choice)
  end

  def self.current
    @game
  end

  def initialize(choice)
    @player_choice = choice
  end

  def player_choose(choice)
    Object.const_get(choice).new
  end

  def computer_choose
    Object.const_get(Computer.new.choose).new
  end

  def play
    "Win"
  end
end
