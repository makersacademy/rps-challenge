require './lib/player'
require './lib/computer'

class Game 

  def self.new_game(player1_name, player2_name, weapons)
    @game = Game.new(player1_name, player2_name, weapons)
  end

  def self.current_game
    @game
  end

  attr_reader :player1, :player2, :weapons, :current_player

  def initialize(player1_name, player2_name, weapons)
    @player1 = Player.new(player1_name)
    if player2_name == ""
      @player2 = Computer.new("Computer")
    else
      @player2 = Player.new(player2_name)
    end
    @weapons = weapons.to_i
    @current_player = @player1
  end

  def get_move(move)
    @current_player.next_move(move)
    whos_turn
  end

  def vs_computer? 
    @player2.is_a? Computer
  end

  def match(player1move, player2move)
    if player1move == player2move 
      return true
    end

    if player2move.odd? && player1move.odd? || player1move.even? && player2move.even?
      [player1move, player2move].min
    else
      [player1move, player2move].max
    end
  end

  private

  def whos_turn
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end
end
