class Game

  require 'computer'

  attr_reader :player_choice

  def self.new_game(choice)
    @game = Game.new(choice)
  end

  def self.current
    @game
  end

  def initialize(choice, computer = Computer.new)
    @player_choice = choice
    @computer = computer
  end

  def player_choose(choice)
    Object.const_get(choice).new
  end

  def computer_choose
    Object.const_get(computer.choose).new
  end

  def play
    player_choose(player_choice).versus(computer_choose)
  end

  private

  attr_reader :computer
end
