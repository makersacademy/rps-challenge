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
      "Rock" => ["Scissors", "Lizard"],
      "Scissors" => ["Paper", "Lizard"],
      "Paper" => ["Rock", "Spock"],
      "Lizard" => ["Paper", "Spock"],
      "Spock" => ["Rock", "Scissors"]
      }
  end

  def evaluate(player1, player2)
    @winner = player1.name if player1_wins?
    @winner = player2.name if !player1_wins?
    @winner = "No one" if player1.move == player2.move
  end

  def player1_wins?
    winning_combos.each do |move1, _move2|
      @p1_win = true if player1.move == move1 && player2.move == @winning_combos[move1][0]
      @p1_win = true if player1.move == move1 && player2.move == @winning_combos[move1][1]
    end
    @p1_win
  end

end
