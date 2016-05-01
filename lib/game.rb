require_relative 'player'
class Game
  attr_reader :player1, :player2, :result
  def initialize(player1, player2 = Player.new("Computer"))
    @player1 = player1
    @player2 = player2
    @combos = {"Scissors" => "Paper", "Paper" => "Rock", "Rock" => "Scissors"}
  end

  def self.create(player)
    @game = self.new(player)
  end

  def self.instance
    @game
  end

  def play(choice1, *choice2)
    @player1.choose(choice1)
    @player2.choose(choice2)
    if @player1.choice == @player2.choice
      @result = "Tie"
    elsif @combos[@player1.choice] == @player2.choice
      @result = @player1
    else
      @result = @player2
    end
  end

end
