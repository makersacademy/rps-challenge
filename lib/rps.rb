class Rps
  attr_reader :player, :player_move, :computer_move
  MOVES = [:rock, :paper, :scissors]

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
    MOVES.each_with_index do |choice, i|
      if player_move == choice
        return "#{player} wins!" if computer_move == MOVES[i - 1]
        return "computer wins!" if computer_move == MOVES[i + 1]
        return "Draw!"
      end
    end
  end
end
