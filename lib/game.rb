class Game 
  attr_reader :player1, :computer_choice, :computer

  OUTCOMES = {
    :rock => :scissors,
    :scissors => :paper,
    :paper => :rock
  }

  def initialize(player1, computer)
    @player1 = player1
    @computer = computer
  end

  def self.create(player1, computer)
    @game = Game.new(player1, computer)
  end

  def self.instance
    @game
  end

  def player1_chooses(move)
    @player1.make_choice(move)
  end

  def computer_chooses(move = @computer.move)
    @computer.make_choice(move)
  end

  def outcome
    if OUTCOMES[@player1.choice] == @computer.choice
      @player1.name
    elsif OUTCOMES[@computer.choice] == @player1.choice
      @computer.name
    else
      :draw
    end
  end

end
