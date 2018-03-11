class Game

  attr_reader :whos_turn, :shapes

  def initialize(player1, player2, gamemod = 'rps_mod')
    @player1 = player1
    @player2 = player2
    @whos_turn = @player1
    @whos_waiting = @player2
    require gamemod
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
    @player1.shape.weaknesses.include?(@player2.shape.name) ? @player2 : @player1
  end

  def reset
    @player1.play_shape(nil)
    @player2.play_shape(nil)
  end

  private

  def switch_players
    @whos_turn, @whos_waiting = @whos_waiting, @whos_turn
  end

  def finished?
    !!@player1.shape && !!@player2.shape
  end
end
