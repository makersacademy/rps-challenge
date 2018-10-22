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
    @winner = "unassigned"
  end

  attr_reader :player1, :player2, :winner

  def winning_combos
    @winning_combos = {
      "Rock" => "Scissors",
      "Scissors" => "Paper",
      "Paper" => "Rock"
      }
  end

  def evaluate(player1, player2)
    @winner = player1.name if player1_win?
    @winner = player2.name if !player1_win?
    @winner = "No one" if player1.move == player2.move
  end

  def player1_win?
    @player1_win = false
    winning_combos.each do |move1, move2|
      @player1_win = true if player1.move == move1 && player2.move == move2
    end
    @player1_win
  end

end
