class Player

  attr_reader :name, :move

  def initialize(name, game_type = 'rps')
    @name = name
    @move = '&nbsp;'
    @game_type = game_type
  end

  def make_move(move)
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
