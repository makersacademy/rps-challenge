require_relative 'player'
class Game
  attr_reader :player1, :player2, :current_turn, :multiplayer
  COMPUTER_NAME = "John Cena"
  
  def initialize(player1, player2, multiplayer = false)
    @player1 = player1
    @player2 = player2
    @multiplayer = multiplayer
    @current_turn = player1
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
    (@current_turn == @player2) && !!@player2.move
  end

  def winner
    game_over.name
  end

  def finish_game
    add_score
    switch_turns
  end

  def computer_move
    ["Rock", "Paper", "Scissors"][rand(3)]
  end

  def self.create(player1, player2, multiplayer = false)
    @game = Game.new(player1, player2, multiplayer)
  end
  
  def self.instance
    @game
  end

  private

  def game_over    
    case [@player1.move, @player2.move]
    when ['Rock', 'Scissors'], ['Paper', 'Rock'], ['Scissors', 'Paper']
      @player1
    when ['Paper', 'Scissors'], ['Scissors', 'Rock'], ['Rock', 'Paper']
      @player2
    end
  end

  def add_score
    game_over.add_point unless tie_game?
  end

  def opposite_player(player = @current_turn)
    player == player1 ? player2 : player1
  end
end
