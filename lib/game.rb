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

  def winning_combo
    @win_combo = {
      "Rock" => ["Scissors", "Lizard"],
      "Scissors" => ["Paper", "Lizard"],
      "Paper" => ["Rock", "Spock"],
      "Lizard" => ["Paper", "Spock"],
      "Spock" => ["Rock", "Scissors"]
      }
  end

  def evaluate(player1, player2)
    @winner = player1.name if player1_wins?
    @winner = player2.name unless player1_wins?
    @winner = "No one" if player1.move == player2.move
  end

  def player1_wins?
    winning_combo.each do |m1, _m2|
      return true if player1.move == m1 && @win_combo[m1].include?(player2.move)
    end
    false
  end

end
