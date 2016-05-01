class Game

  R = "ROCK"
  P = "PAPER"
  S = "SCISSORS"
  SP = "SPOCK"
  L = "LIZARD"
  WIN = [{p1:R, p2:S},{p1:S, p2:P},{p1:P, p2:R},{p1:L, p2:SP},{p1:SP, p2:S}]
  WIN2 =[{ p1:R,p2: L},{p1:S, p2:L},{p1:P, p2:SP},{p1:L, p2:P},{p1:SP, p2:R}]

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

  attr_reader :attacks, :player, :chosen_attacks

  def initialize(player_name)
    @attacks = [R, P, S, SP, L]
    @chosen_attacks = { p1: nil, p2: nil }
    @player = player_name
  end

  def attack_with(attack)
    @chosen_attacks[:p1] = attack.upcase
  end

  def computer_attack
    @chosen_attacks[:p2] = attacks.sample
  end

  def result
    return player if winning_arrangement
    return "DRAW" if chosen_attacks[:p1] == chosen_attacks[:p2]
    "COMPUTER"
  end

  private

  def winning_arrangement
    ((WIN.include? chosen_attacks) || (WIN2.include? chosen_attacks))
  end

end