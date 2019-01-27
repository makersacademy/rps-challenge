class Game
  attr_reader :player1, :player2

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def round_winner?
    beats = {
     'Rock' => ['Scissors', 'Lizard'],
     'Paper' => ['Spock', 'Rock'],
     'Scissors' => ['Lizard', 'Paper'],
     'Lizard' => ['Spock', 'Paper'],
     'Spock' => ['Rock', 'Scissors']
   }
    if player1.move == player2.move
      return "Draw! Nobody "
    end
    if beats[player1.move].include?(player2.move)
      return @player1.name
    else return @player2.name
    end
  end
end
