class Game

  MOVES = {
    :rock => { :scissors => :p1_win, :paper => :cpu_win, :rock => :draw },
    :paper => { :rock => :p1_win, :scissors => :cpu_win, :paper => :draw },
    :scissors => { :paper => :p1_win, :rock => :cpu_win, :scissors => :draw }
  }

  attr_reader :player_1, :computer

  def self.instance
    @game
  end

  def self.create(player_1, computer)
    @game = Game.new(player_1, computer)
  end

  def initialize(player_1, computer)
    @player_1 = player_1
    @computer = computer
  end

  def result
    MOVES[@player_1.move][@computer.move]
  end

  def print_score
    "#{@player_1.name} #{@player_1.score} : #{@computer.score} #{@computer.name}"
  end

end
