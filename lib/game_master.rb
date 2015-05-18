require_relative './rule_book'

class GameMaster
  include RuleBook
  attr_reader :game

  def initialize game = :standard
    @game = game
    @players = []
  end

  def add player
    players << player
  end

  def remove player
    players.delete(player)
  end

  def winner
    compare_choices
  end

  def show_players
    players.map(&:name).join(', ')
  end

  private

  attr_reader :players

  def compare_choices
    p1 = rules(game).find_index(players[1].choice)
    p0 = rules(game).find_index(players[0].choice)
    outcome = (rule_size(game) + p1 - p0) % rule_size(game)
    if outcome.zero?
      'draw'
    else
      decide_winner(outcome)
    end
  end

  def decide_winner outcome
    outcome.odd? ? players[1].name : players[0].name
  end
end
