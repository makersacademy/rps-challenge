class Game

  attr_reader :attacks, :player, :chosen_attacks

  R = "ROCK"
  P = "PAPER"
  S = "SCISSORS"
  WIN = [{ p1: R, p2: S },{ p1: S, p2: P },{ p1: P, p2: R }]

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

  def initialize(player_name)
    @attacks = [R, P, S]
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
    WIN.include? chosen_attacks
  end

end