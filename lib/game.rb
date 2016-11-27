class Game
  @game
  OPTIONS = [:rock, :paper, :scissors]
  WINNERS = [[:scissors, :paper], [:paper, :rock], [:rock, :scissors]]
  LOSERS =  WINNERS.map { |i,j| [j,i] }
  attr_accessor :player
  attr_reader :move

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = self.new(player)
  end

  def self.instance
    @game
  end

  def play
    @move = OPTIONS.sample
  end

  def who_won
    if WINNERS.include? [self.player.move, move]; :player
    elsif LOSERS.include? [self.player.move, move]; :computer
    else :draw
    end
  end

end
