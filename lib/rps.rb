require './lib/player'
require './lib/computer'
require './lib/game_options'

class RPS

  attr_reader :game_options, :game_type, :player1, :player2

  def initialize(player1, player2, game_type, game_options = GameOptions)

    if game_type == :normal 
      @game_options = game_options.normal_game 
    else
      @game_options = game_options.spock_game
    end

    @game_type = game_type
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
    @round = 1
  end

  def self.create(player1, player2, game_type)
    @game = RPS.new(player1, player2, game_type)
  end

  def self.instance
    @game
  end

  def retrieve_turn 
    @players.first
  end

  def change_turn 
    @players.reverse!
  end

  def computer_turn?
    @players.first.name == 'Computer'
  end

  def retrieve_round
    @round
  end

  def completed_run
    @players.select { |player| player.assigned_choice? == true }
  end

  def reset_game
    @players.map { |player| player.reset }
    @round += 1
  end

  def exit
    @players.map { |player| player.exit }
  end

end
