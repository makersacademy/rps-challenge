class MoveHolder

  def initialize play_mode, comparator, random_move_creator
    @play_mode           = play_mode
    @random_move_creator = random_move_creator
    @comparator          = comparator
    @shapes              = []
  end

  def hold (shape_player)
    shapes << bot_call if play_mode == :solo
    shapes << shape_player
    
    if shapes.size == 2
      result = comparator.compair(*shapes) 
      shapes.clear
      result
    end
  end

  private

  def bot_call
    [random_move_creator.call, :robot] 
  end

  attr_reader :play_mode, :random_move_creator, :comparator, :shapes

end