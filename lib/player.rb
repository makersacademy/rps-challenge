class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = '&nbsp;'
  end

  def set_move(move)
    @move = move
  end

  def image
    if move == '&nbsp;'
      "'/images/rock.png'"
    else
      "'/images/#{move}.png'"
    end
  end

end
