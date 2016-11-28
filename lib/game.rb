class Game
  @game
  WINNERS = [[:scissors, :paper], [:paper, :rock], [:rock, :scissors]]
  LOSERS =  WINNERS.map { |i,j| [j,i] }
  attr_accessor :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.create(player, computer)
    @game = self.new(player, computer)
  end

  def self.instance
    @game
  end

  def who_won
    if WINNERS.include? [self.player.move, self.computer.move]; :player
    elsif LOSERS.include? [self.player.move, self.computer.move]; :computer
    else :draw
    end
  end

end
