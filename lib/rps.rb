class Rps
  attr_reader :player, :player_move, :computer_move

  class << self
    attr_reader :rps
  end

  def self.start(player_name)
    @rps = new(player_name)
  end

  def initialize(player_name)
    @player = player_name
    @moves = ['rock', 'paper', 'scissors']
  end

  def select_move(choice)
    @player_move = choice
    @computer_move = @moves.sample
  end

  def outcome
    @moves.each_with_index do |choice, i|
      if player_move == choice
        return "#{player} wins!" if computer_move == @moves[i - 1]
        return "computer wins!" if computer_move == @moves[i + 1]
        return "Draw!"
      end
    end
  end
end
