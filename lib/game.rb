class Game 

  attr_reader :name, :move, :computer_move

  # def self.create(sessions)
  #   @game = Game.new(sessions)
  # end

  # def self.instance
  #   @game
  # end

  def initialize(sessions)
    @name = sessions[:name]
    @computer_move = sessions[:computer_move]
    @move = sessions[:move]
  end

  def win?
    true if @move == "paper" && @computer_move == :rock
    true if @move == "scissors" && @computer_move == :paper
    true if @move == "rock" && @computer_move == :scissors
  end

  def lose?
    true if @move == "scissors" && @computer_move == :rock
    true if @move == "rock" && @computer_move == :paper
    true if @move == "paper" && @computer_move == :scissors
  end

  def draw?
    true if @computer_move == :rock && @move == "rock"
    true if @computer_move == :scissors && @move == "scissors"
    true if @computer_move == :paper && @move == "paper"
  end

end
