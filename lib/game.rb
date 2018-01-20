class Game

  attr_reader :player1, :player2

  # Because .create and .instance are both class methods,
  # they both have access to the same class instance variable @game

  def self.create(player1, player2) # this is created in Game class
    @game = Game.new(player1, player2)
  end

  def self.instance # can now call Game class with .instance method
    @game
  end

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def moves(player1_choice, player2_choice)
    winning_moves = { 'Rock' => 'Scissors', 'Paper' => 'Rock', 'Scissors' => 'Paper' }
    p player1_choice == player2_choice
    return "It's a draw!" if (player1_choice == player2_choice)
    return "#{player1.name} wins!" if winning_moves[player1_choice] == player2_choice
    return "#{player2.name} wins!"
  end

end
