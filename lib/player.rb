class Player

  attr_reader :name, :current_move

  def initialize(name)
    @name = name.upcase
    @current_move = nil
  end

  def chosen_move(move)
    @current_move = move
  end

  def random_move
    roll = Kernel.rand(1..3)
    case roll
    when 1
      @current_move = 'ROCK'
    when 2
      @current_move = 'PAPER'
    when 3
      @current_move ='SCISSORS'
    end
  end

  def reset
    @current_move = nil
  end

end
