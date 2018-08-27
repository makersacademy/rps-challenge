class Game

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def player1 
    @players.first
  end

  def player2
    @players.last
  end

  def winner
    return 'draw' if score.zero?
    [-2, 1].include?(score) ? player1.name : player2.name
  end

  def win_message
    winner == 'draw' ? "It's a draw." : "#{winner} wins!"
  end

  private

  def score
    options = ['Rock', 'Paper', 'Scissors']
    options.index(player1.selection) - options.index(player2.selection)
  end
  
end
