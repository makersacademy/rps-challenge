class Game
  @game
  WINNERS = [[:scissors, :paper], [:paper, :rock], [:rock, :scissors]]
  LOSERS =  WINNERS.map { |i,j| [j,i] }
  attr_accessor :player, :computer, :score

  def initialize(player, computer)
    @player = player
    @computer = computer
    @score = {:player=>0, :computer=>0}
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

  def keep_score
    case who_won
    when :player
      self.score[:player] += 1
    when :computer
      self.score[:computer] += 1
    end
  end

end
