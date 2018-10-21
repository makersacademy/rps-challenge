class Game

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @winner = "test"
  end

  attr_reader :player1, :player2, :winner

  def evaluate(player1, player2)
    @winner = "No one" if player1.move == player2.move
    if player1.move == "Rock"
      @winner = player1.name if player2.move == "Scissors"
      @winner = player2.name if player2.move == "Paper"
    elsif player1.move == "Paper"
      @winner = player1.name if player2.move == "Rock"
      @winner = player2.name if player2.move == "Scissors"
    else # player1.move == "Scissors"
      @winner = player1.name if player2.move == "Paper"
      @winner = player2.name if player2.move == "Rock"
    end
    @winner
  end

end
