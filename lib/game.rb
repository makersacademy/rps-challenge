require_relative 'logic'
require_relative 'player'
require_relative 'random_move'

class Game

  attr_reader  :moves, :multiplayer, :player1, :player2, :logic
  attr_accessor :mode

  def initialize(player1: 'Player 1', player2: 'Computer', player: Player, multiplayer: false, mode: 'standard', logic: Logic::STD)
    @player = player
    @player1 = @player.new(player1)
    @player2 = @player.new(player2)
    @multiplayer = multiplayer
    @mode = mode
    @moves = []
    @logic = set_logic
  end

  def add_move(move)
    @moves << move
  end

  def first_move
    @moves.first
  end

  def second_move
    @moves[1]
  end

  def set_mode(mode)
    @mode = mode
    set_logic
  end

  def set_multiplayer(bool)
    @multiplayer = bool
  end

  def set_player1(name)
    @player1 = @player.new(name)
  end

  def set_player2(name)
    @player2 = @player.new(name)
  end

  def computer_move(mode = @mode)
    add_move(RandomMove.new(mode).move)
  end

  def winner
    p @logic
    return @player1 if @logic[@moves] == 1
    return @player2 if @logic[@moves] == 2
    return 'draw' if @logic[@moves] == nil
  end

  private

  def set_logic
    if @mode == 'standard'
      @logic = Logic::STD
    else
      @logic = Logic::SPOCK
    end
  end

end
