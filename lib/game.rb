require_relative 'computer'

class Game
  def self.instance
    @game
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  attr_reader :player_1, :player_2, :winner, :p1_score, :p2_score
  def initialize(player_1, player_2, rules_class = Rules)
    @player_1 = player_1
    @player_2 = player_2
    @rules_class = rules_class
    @rules = rules_class.new
    @p1_score = 0
    @p2_score = 0
  end

  def p1_choice(weapon)
    @player_1.weapon_choice(weapon)
  end

  def p2_choice(weapon)
    @player_2.weapon_choice(weapon)
  end

  def computers_move?
    return computer_weapon_selector if against_computer?
    '/p2-weapon'
  end

  def result
    reset
    find_winner
    track_scores
  end

  def reason
    @rules.reason_finder(p1_weapon, p2_weapon)
  end

  def complete?
    return '/champion' if @p1_score >= 3 || @p2_score >= 3
    '/weapon-choice'
  end

  def p1_name
    @player_1.name
  end
  def p2_name
    @player_2.name
  end
  def p1_weapon
    @player_1.weapon
  end
  def p2_weapon
    @player_2.weapon
  end
  def winner_name
    @winner.name
  end

  private

  def p1_wins
    @rules.defeats?(p1_weapon, p2_weapon)
  end

  def p2_wins
    @rules.defeats?(p2_weapon, p1_weapon)
  end

  def reset
    @winner = nil
  end

  def find_winner
    @winner = @player_1 if p1_wins
    @winner = @player_2 if p2_wins
  end

  def track_scores
    @p1_score += 1 if p1_wins
    @p2_score += 1 if p2_wins
  end

  def against_computer?
    player_2.is_a? Computer
  end

  def computer_weapon_selector
    @player_2.weapon_choice(@rules_class::MOVES)
    '/result'
  end
end
