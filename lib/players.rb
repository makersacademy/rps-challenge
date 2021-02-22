
class Player
  attr_reader :ID, :name, :move, :bot
  def initialize id, name, bot = false
    @ID = id
    @name = name
    @move = nil
    @bot = bot
    random_move() if bot
  end

  def enter_move move
    @move = move
  end

  def reset
    if @bot
      random_move
    else
      @move = nil
    end
  end

  private

  def random_move
    @move = ["R", "P", "S"].sample
  end
end