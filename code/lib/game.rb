class Game

  attr_reader :game, :comp, :player
  def initialize
    @player = Player.new
    @comp = Comp.new
    @values = {:rock => :scissors, :paper => :rock, :scissors => :paper}
  end

  def result
    return :draw if is_draw?
    return :win if is_win?
    :loss
  end

  private 

  def is_draw?
    @comp.choice == @player.choice
  end

  def is_win?
    @values.fetch(@player.choice) == @comp.choice
  end

end

