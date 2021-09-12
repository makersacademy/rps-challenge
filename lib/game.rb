class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def winner
    player1 = @player1.choice
    player2 = @player2.choice

    beatmap = { 'Scissors' => 'Paper', 'Paper' => 'Rock', 'Rock' => 'Scissors' }

    if player1 == player2
      "It's a draw!"
    elsif beatmap[player1] == player2
      "#{@player1.name} wins!"
    else
      "#{@player2.name} wins!"
    end
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end
end
