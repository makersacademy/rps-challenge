require_relative 'player'
require_relative 'pc'

class Game
  attr_reader :player, :pc
  attr_accessor :player_move
  @game = nil

  def initialize(player = Player.new, pc = PC.new)
    @player = player
    @pc = pc   
    @game = nil
    @player_move = nil
  end

  def self.save_game(new_game)
    @game = new_game
  end

  def self.load_game
    @game
  end

  def winner(player_move, pc_move)
    if player_move == pc_move
      "It's a draw"
    elsif player_move== "Rock" && pc_move == "Paper"
      "computer wins, you lose"
    elsif player_move == "Paper" && pc_move == "Scissors"
      "computer wins, you lose"
    elsif player_move == "Scissors" && pc_move == "Rock"
      "computer wins, you lose"
    elsif player_move == "Paper" && pc_move == "Rock"
      "you win!"
    elsif player_move == "Scissors" && pc_move == "Paper"
      "you win!"
    elsif player_move == "Rock" && pc_move == "Scissors"
      "you win!"
    end
  end
end
