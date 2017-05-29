# Responsible for allowing the game to result in a winner and loser
require_relative 'rules'

class Game
  attr_reader :players, :game_history

  def initialize(player, opponent, rules = Rules.new)
    @players = [player, opponent]
    @rules = rules
    @game_history = Array.new
  end

  def self.create(player, opponent)
    @game = Game.new(player, opponent)
  end

  def self.instance
    @game
  end

  def play_a_round(player_choice)
    @players[0].choose_hand(player_choice)
    @players[1].choose_hand
    append_game_history
    @game_history.last
  end

  def declare_winner
    return :draw if @rules.draw?(@players)
    return :win if @rules.check_rules(@players)
    :lose
  end

  def save_game(session)
    CSV.open('saved_games/rps_savegame.csv', 'w') do |csv|
      csv << session
    end
  end

  private

  def append_game_history
    @game_history << declare_winner
  end

end
