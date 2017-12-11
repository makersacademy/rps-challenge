class Game
  attr_reader :player1, :player2
  def initialize(player1, player2, player_class = Player)
    @player1 = player_class.new(player1)
    @player2 = player_class.new(player2)
  end

  def self.create_game(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.game
    @game
  end

  def game_logic
    if @player1.choice == @player2.choice 
      "IT'S A DRAW!"
    else
      if @player1.choice == 'Rock' && @player2.choice == 'Scissors'
        'PLAYER 1 WINS!'
      elsif @player1.choice == 'Scissors' && @player2.choice == 'Paper'
        'PLAYER 1 WINS!'
      elsif @player1.choice == 'Paper' && @player2.choice == 'Rock'
        'PLAYER 1 WINS!'
      else 
        'PLAYER 2 WINS!'
      end
    end
  end
end
