require_relative 'turn'

class Play
  attr_reader :players, :turn, :result, :message

  def initialize(player_1, player_2, turn_type = Turn)
    @players = [player_1, player_2]
    @turn = turn_type.new
    @result = {}
    @message = ''
  end

  def play
    run_turn
  end

  private

  def run_turn
    players.each do |x|
      result[x] = turn.run
    end
  end
end
