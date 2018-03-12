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
      'ro' => 'Rock',
      'pa' => 'Paper',
      'sc' => 'Scissors',
      'li' => 'Lizard',
      'sp' => 'Spock'
    }
    @turn.choose(value[choice.downcase])
  end

  def result
    results = {
      ["Rock", "Rock"] => "DRAW",
      ["Paper", "Paper"] => "DRAW",
      ["Scissors", "Scissors"] => "DRAW",
      ["Lizard", "Lizard"] => "DRAW",
      ["Spock", "Spock"] => "DRAW",
      ["Rock", "Paper"] => "#{@player2.name} won!",
      ["Rock", "Scissors"] => "#{@player1.name} won!",
      ["Rock", "Lizard"] => "#{@player1.name} won!",
      ["Rock", "Spock"] => "#{@player2.name} won!",
      ["Paper", "Rock"] => "#{@player1.name} won!",
      ["Paper", "Scissors"] => "#{@player2.name} won!",
      ["Paper", "Lizard"] => "#{@player2.name} won!",
      ["Paper", "Spock"] => "#{@player1.name} won!",
      ["Scissors", "Paper"] => "#{@player1.name} won!",
      ["Scissors", "Rock"] => "#{@player2.name} won!",
      ["Scissors", "Lizard"] => "#{@player1.name} won!",
      ["Scissors", "Spock"] => "#{@player2.name} won!",
      ["Lizard", "Rock"] => "#{@player2.name} won!",
      ["Lizard", "Paper"] => "#{@player1.name} won!",
      ["Lizard", "Scissors"] => "#{@player2.name} won!",
      ["Lizard", "Spock"] => "#{@player1.name} won!",
      ["Spock", "Rock"] => "#{@player1.name} won!",
      ["Spock", "Paper"] => "#{@player2.name} won!",
      ["Spock", "Scissors"] => "#{@player1.name} won!",
      ["Spock", "Lizard"] => "#{@player2.name} won!"
    }
    array = []
    array.push(@player1.choice)
    array.push(@player2.choice)
    return results[array]
  end

end
