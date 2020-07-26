require_relative 'player'
class Game
  attr_accessor :player1, :player2, :current_turn, :multiplayer
  COMPUTER_NAME = "John Cena"
  
  def initialize(player1, player2, multiplayer = false)
    @player1 = player1
    @player2 = player2
    @multiplayer = multiplayer
    @current_turn = player1
  end

  def player_move(player)
    player.move 
  end
  
  def computer_move
    ["Rock", "Paper", "Scissors"][rand(3)]
  end

  def switch_turns
    @current_turn = opposite_player
  end

  def make_computer_move
    @player2.make_move(computer_move)
  end

  def tie_game?
    @player1.move == @player2.move
  end

  def game_over?
    @current_move == @player2 && !!@player2.move 
  end

  def winner
    game_over.name
  end

  def finish_game
    add_score
    switch_turns
  end

  private

  def self.create(player1, player2, multiplayer=false)
    @game = Game.new(player1, player2, multiplayer )
  end
  
  def self.instance
    @game
  end

  def game_over    
    if (@player1.move == 'Rock' && @player2.move == 'Scissors') || 
      (@player1.move == 'Paper' && @player2.move == 'Rock') || 
      (@player1.move == 'Scissors' && @player2.move == 'Paper')
      @player1
    else  
      @player2
    end
  end

  def add_score
    game_over.add_point
  end

  def opposite_player(player = @current_turn)
    player == player1 ? player2 : player1
  end
end
