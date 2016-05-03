require_relative 'score'

class Game

  R = "ROCK"
  P = "PAPER"
  S = "SCISSORS"
  SP = "SPOCK"
  L = "LIZARD"
  WIN = [{p1:R, p2:S},{p1:S, p2:P},{p1:P, p2:R},{p1:L, p2:SP},{p1:SP, p2:S}]
  WIN2 =[{ p1:R,p2: L},{p1:S, p2:L},{p1:P, p2:SP},{p1:L, p2:P},{p1:SP, p2:R}]
  BEST_OF = 5.0

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

  attr_reader :attacks, :player, :chosen_attacks, :score

  def initialize(player_name, score = Score.new)
    @attacks = [R, P, S, SP, L]
    @chosen_attacks = { p1: nil, p2: nil }
    @player = player_name
    @score = score
  end

  def attack_with(attack)
    @chosen_attacks[:p1] = attack.upcase
  end

  def computer_attack
    @chosen_attacks[:p2] = attacks.sample
  end

  def result
    return "DRAW" if chosen_attacks[:p1] == chosen_attacks[:p2]
    winning_arrangement ? p1_win : comp_win
  end

  def winner
    return player if score.total > (BEST_OF / 2)
    return "COMPUTER" if score.comp_total > (BEST_OF / 2)
  end

  def win_reached
    (score.total > (BEST_OF / 2)) || (score.comp_total > (BEST_OF / 2))
  end

  private

  def winning_arrangement
    ((WIN.include? chosen_attacks) || (WIN2.include? chosen_attacks))
  end

  def p1_win
      score.add
      player
  end

  def comp_win
      score.comp_add
      "COMPUTER"
  end

end