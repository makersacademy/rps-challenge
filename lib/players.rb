
class Player
  attr_reader :ID, :name, :move, :bot
  def initialize id, name, bot = false
    @ID = id
    @name = name
    @move = nil
    @bot = bot
  end
end