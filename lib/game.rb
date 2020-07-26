require_relative 'player'
class Game
  attr_reader :player, :comp_move, :player_score, :computer_score
  COMPUTER_NAME = "John Cena"
  
  def initialize(player)
    @player = player
    @player_score = 0
    @computer_score = 0
  end

  def player_move
    @player.move 
  end

  def computer_move
    @comp_move = ["Rock", "Paper", "Scissors"][rand(3)]
  end
  
  def tie_game?
    player_move == @comp_move
  end

  def winner
    game_over
  end

  private

  def self.create(player)
    @game = Game.new(player)
  end
  
  def self.instance
    @game
  end

  def game_over    
    if (player_move == 'Rock' && @comp_move == 'Scissors') || 
      (player_move == 'Paper' && @comp_move == 'Rock') || 
      (player_move == 'Scissors' && @comp_move == 'Paper')
      @player_score += 1
      player.name
    else 
      @computer_score += 1  
      COMPUTER_NAME
    end
  end
end
