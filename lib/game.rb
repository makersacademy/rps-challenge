require_relative 'player'

class Game
  attr_reader :player_1, :player_2

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def outcome
    if player_1.choice == "Scissors" && player_2.choice == "Scissors"
      "It's a draw!"
    elsif player_1.choice == "Scissors" && player_2.choice == "Rock"
      "#{player_2.name} wins!"
    elsif player_1.choice == "Scissors" && player_2.choice == "Paper"
      "#{player_1.name} wins!"
    elsif player_1.choice == "Rock" && player_2.choice == "Rock"
      "It's a draw!"
    elsif player_1.choice == "Rock" && player_2.choice == "Paper"
      "#{player_2.name} wins!"
    elsif player_1.choice == "Rock" && player_2.choice == "Scissors"
      "#{player_1.name} wins!"
    elsif player_1.choice == "Paper" && player_2.choice == "Rock"
      "#{player_1.name} wins!"
    elsif player_1.choice == "Paper" && player_2.choice == "Paper"
      "It's a draw!"
    elsif player_1.choice == "Paper" && player_2.choice == "Scissors"
      "#{player_2.name} wins!"
    end
  end
end
