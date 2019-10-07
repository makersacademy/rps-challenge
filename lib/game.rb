class Game
  attr_reader :player, :computer

  OPTIONS = [:rock, :paper, :scissors]
  BEATMAP = { :rock => :scissors, :scissors => :paper, :paper => :rock }

  def self.create(player, computer)
    @game = self.new(player, computer)
  end

  def self.instance
    @game
  end

  def winner
    if @computer.option == BEATMAP[@player.option]
      @player
    elsif @player.option == BEATMAP[@computer.option]
      @computer
    else
      :draw
    end
  end

  private

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end

end
