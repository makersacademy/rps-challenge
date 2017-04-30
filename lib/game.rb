require_relative './ai_player'
require_relative './human_player'

class Game

  def self.create_game(params)
    @game = Game.new(params)
  end

  def self.game
    @game
  end

  attr_reader :player_1, :player_2

  def initialize(params)
    params = init_defaults.merge(params)
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
  end

  def print_result
    return "The winner is ... It's a draw!" if player_1.choice == player_2.choice
    "The winner is #{decide_winner.name}!"
  end

  private

  def init_defaults
    { player_2: AiPlayer.new }
  end

  def decide_winner
    case player_1.choice
    when :rock
      player_2.choice == :scissors ? player_1 : player_2
    when :paper
      player_2.choice == :rock ? player_1 : player_2
    when :scissors
      player_2.choice == :paper ? player_1 : player_2
    end
  end
end
