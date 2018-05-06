class Rps
  attr_reader :player, :player_move, :computer_move
  MOVES = [:rock, :paper, :scissors]
  RULES = { :rock => :scissors, :paper => :rock, :scissors => :paper }

  class << self
    attr_reader :rps
  end

  def self.start(player_name)
    @rps = new(player_name)
  end

  def initialize(player_name)
    @player = player_name
  end

  def select_move(choice)
    @player_move = choice
    @computer_move = MOVES.sample
  end

  def outcome
    return :win if RULES[player_move] == computer_move
    return :lose if RULES[computer_move] == player_move
    return :draw
  end
end
