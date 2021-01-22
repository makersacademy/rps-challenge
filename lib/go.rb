class Go

  attr_reader :name, :move, :computer_move

  def initialize(sessions)
    @name = sessions[:name]
    @move = sessions[:move]
    @computer_move = sessions[:computer_move]
  end

  def lose?
    return true if  @move == "Scissors" && @computer_move == :rock
    return true if  @move == "Rock" && @computer_move == :paper
    return true if  @move == "Paper" && @computer_move == :scissors
  end

  def draw?
    return true if @computer_move == :rock && @move == "Rock"
    return true if @computer_move == :paper && @move == "Paper"
    return true if @computer_move == :scissors && @move == "Scissors"
  end

  def win?
    return true if @move == "Paper" && @computer_move == :rock
    return true if @move == "Scissors" && @computer_move == :paper
    return true if @move == "Rock" && @computer_move == :scissors
  end


end
