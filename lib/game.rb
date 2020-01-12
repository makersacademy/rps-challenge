require './lib/computer'

class Game 
  attr_reader :player1, :computer_choice, :computer

  OUTCOMES = {
    :rock => :scissors,
    :scissors => :paper,
    :paper => :rock
  }

  def initialize(player1, computer = Computer.new)
    @player1 = player1
    @computer = computer
  end

  def player1_chooses(move)
    @player1.make_choice(move)
  end

  def computer_chooses(move = @computer.move)
    @computer.make_choice(move)
  end

  def outcome
    if OUTCOMES[@player1.choice] == @computer.choice
      "#{@player1.name} Wins!"
    elsif OUTCOMES[@computer.choice] == @player1.choice
      "The Computer Wins!"
    else
      "It's a draw!"
    end
  end

end
