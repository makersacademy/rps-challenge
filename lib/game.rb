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
    @winner = "banana"
  end

  attr_reader :player1, :player2, :winner

  def random_move
    ["Rock", "Paper", "Scissors"].sample
  end

  def evaluate(player1, player2)
    if player1.move == "Rock"
      @winner = player1.name if player2.move == "Scissors"
      @winner = player2.name if player2.move == "Paper"
      @winner = "No one" if player2.move == "Rock"
    elsif player1.move == "Paper"
      @winner = player1.name if player2.move == "Rock"
      @winner = player2.name if player2.move == "Scissors"
      @winner = "No one" if player2.move == "Paper"
    else player1.move == "Scissors"
      @winner = player1.name if player2.move == "Paper"
      @winner = player2.name if player2.move == "Rock"
      @winner = "No one" if player2.move == "Scissors"
    end
    @winner
  end

end
