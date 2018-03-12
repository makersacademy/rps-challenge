require_relative './rps_mod.rb'

class Game

  attr_reader :whos_turn, :whos_waiting, :shapes, :player1, :player2

  def initialize(player1, player2, mod_path='./rps_mod.rb')
    @player1 = player1
    @player2 = player2
    @whos_turn = @player1
    @whos_waiting = @player2
    require_relative mod_path
    @shapes = GameMod::SHAPES_ARY
  end

  def play(shape_choice)
    raise Exception.new("Game is finished!") if finished?
    raise Exception.new("That player has already chosen!") if !!@whos_turn.shape
    @whos_turn.play(@shapes[shape_choice])
    switch_players
  end

  def winner
    raise Exception.new("Game is not finished yet!") unless finished?
    winstring
  end

  def reset
    @player1.play(nil)
    @player2.play(nil)
  end

  def self.create_instance(player1, player2, mod_path='./rps_mod.rb')
    @game = Game.new(player1, player2, mod_path)
  end

  def self.return_instance
    @game
  end

  def finished?
    !!@player1.shape && !!@player2.shape
  end

  private

  def winning_player
    return false if @player1.shape == @player2.shape
    @player1.shape.beats.include?(@player2.shape.name) ? @player1 : @player2
  end

  def winstring
    winning_player ? "#{winning_player.name} is the WINNER!" :   "It's a tie!"
  end

  def switch_players
    @whos_turn, @whos_waiting = @whos_waiting, @whos_turn
  end
end
