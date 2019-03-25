class Game

  attr_reader :player, :computer

  WINNER = { :rock => :scissors, :scissors => :paper, :paper => :rock }
  OPTIONS = [:rock, :paper, :scissors]

  def self.create_game(player, computer)
    @game = self.new(player, computer)
  end

  def self.instance
    @game
  end

  def winner
    if @computer.weapon == WINNER[@player.weapon]
      @player
    elsif @player.weapon == WINNER[@computer.weapon]
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
