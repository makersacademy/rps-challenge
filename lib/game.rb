class Game

  #require_relative 'weapon'
  require_relative 'computer'
  require_relative 'player'

  require_relative 'rock'
  require_relative 'paper'
  require_relative 'scissors'


  attr_reader :player_choice, :result, :player, :computer_choice

  def self.new_game(choice)
    @game = Game.new(choice)
  end

  def self.current
    @game
  end

  def initialize(player, computer = Computer.new)
    @computer = computer
    @player = player
  end

  def play(choice)
    player_choose(choice)
    computer_choose
    @result = player_choice.versus(computer_choice)
  end

  def result_string
    result == "Draw" ? ("It's a draw!") : ("#{player.name} #{result}!")
  end

  private

  attr_reader :computer

  def player_choose(choice)
    @player_choice = Object.const_get(choice).new
  end

  def computer_choose
    @computer_choice = Object.const_get(computer.choose).new
  end

end
