class Game

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result(moves)
    case moves
      when [:rock, :rock], [:scissors, :scissors], [:paper, :paper]
        'Tie'
      when [:rock, :scissors], [:scissors, :paper], [:paper, :rock]
        'Player wins'
      when [:rock, :paper], [:paper, :scissors], [:scissors, :rock]
        'Computer wins'
    end
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

end
