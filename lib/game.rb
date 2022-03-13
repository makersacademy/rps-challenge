require_relative 'turn_manager'
require_relative 'result_manager'
require_relative 'player'

class Game

  attr_reader :players, :turn_manager, :result_message, :winner

  # turn_manager needs mocking out

  def initialize(turn_manager = TurnManager.new, result_manager = ResultManager.new)
    @players = []
    @turn_manager = turn_manager
    @result_manager = result_manager
    @winner = nil
    @result_message = nil
  end

  def new_player(name)
    @players << Player.new(name) # Need to mock this out at some point
  end

  def reset_players
    @players = []
  end

  def change_player
    @turn_manager.change_turn
  end

  def reset_turns
    @turn_manager.reset
  end

  def determine_winner(player1choice = @players[0].choice, player2choice = @players[1].choice)
    @winner = @result_manager.choose_result(player1choice, player2choice)
    if @winner == 'draw' then @result_message = 'You both selected the same option - the game is a draw!'
    else @result_message = "The winner is #{@players[winner].name}"
    end
  end

  def self.instance
    @game ||= Game.new
  end

end
