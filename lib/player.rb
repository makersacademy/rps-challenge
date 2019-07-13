class Player
  attr_reader :name, :winning_move, :move

  def initialize(name = "Computer", move = nil)
    @moves = [:rock, :scissors, :paper, :spock, :lizard]
    @name = name
    @move = move
    @winning_move = []
  end

  def has_move
    !@move.nil?
  end

  def randomise_move
    @move = @moves.sample
  end

  def set_move(move)
    @move = move
  end

  def isolate_moves
    case @move
    when @move == :rock
      @winning_move = [:scissors]
    when @move == :paper
      @winning_move = [:rock]
    when @move == :scissors
      @winning_move = [:paper]
    when @move == :spock
      @winning_move = [:scissors, :rock]
    when @move == :lizard
      @winning_move = [:spock, :paper]
    end
  end



end
