class Game

  attr_accessor :player1, :player2, :turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
    @turn = player1
  end

  def self.create_instance(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.return_instance
    @game
  end

  def switch
    @turn = @players.reverse[0]
  end

  def choose(choice)
    value = {
      'r' => 'Rock',
      'p' => 'Paper',
      's' => 'Scissors'
    }
    @turn.choose(value[choice.downcase])
  end

  def result
    results = {
      ["Rock", "Rock"] => "DRAW",
      ["Paper", "Paper"] => "DRAW",
      ["Scissors", "Scissors"] => "DRAW",
      ["Rock", "Paper"] => "#{@player2.name} won!",
      ["Rock", "Scissors"] => "#{@player1.name} won!",
      ["Paper", "Rock"] => "#{@player1.name} won!",
      ["Paper", "Scissors"] => "#{@player2.name} won!",
      ["Scissors", "Paper"] => "#{@player1.name} won!",
      ["Scissors", "Rock"] => "#{@player2.name} won!"
    }
    array = []
    array.push(@player1.choice)
    array.push(@player2.choice)
    return results[array]
  end

end
