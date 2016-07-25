require_relative "hal"

class Game
  attr_reader :player, :attack, :hal_attack
  def initialize(player, hal = Hal.new)
    @player = player
    @attack = "Paper"
    @hal_attack = hal.attack
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def player_name
    @player.name
  end

  def set_attack(attack)
    @attack = attack
  end

  def player_attack
    @attack
  end

  def calculate(player_attack, hal_attack)
    if player_attack == hal_attack
      "It's a tie!!"
    elsif player_attack == "Scissors" && hal_attack == "Paper"
      @result = player_wins
    elsif player_attack == "Rock" && hal_attack == "Scissors"
      @result = player_wins
    elsif player_attack == "Paper" && hal_attack == "Rock"
      @result = player_wins
    else
      @result = hal_wins
    end
    @result
  end

  def player_wins
    "#{player_name} wins: #{player_attack} beats #{hal_attack}"
  end

  def hal_wins
    "Hal wins: #{hal_attack} beats #{player_attack}"
  end

end
