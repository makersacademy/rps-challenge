require_relative 'player'

class Game
  attr_reader :player1, :player2

  def initialize(player1, player2 = Player.new("Computer"))
    @player1 = player1
    @player2 = player2
  end

  def player_choice(choice)
    @player1.make_choice(choice)
    @player2.make_random_choice
  end

  def result
    rps = { "rock" => 0, "paper" => 1, "scissors" => 2 }
    return "#{@player1.name} won!" if (rps[@player2.choice] + 1) % 3 == rps[@player1.choice]
    return "Draw!" if @player1.choice == @player2.choice

    return "#{@player2.name} won!"
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end
end
