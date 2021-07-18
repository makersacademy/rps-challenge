class Result 
  RPS_HASH = {
    'Rock' => 1,
    'Paper' => 2,
    'Scissors' => 3
  }
  def initialize(player, npc)
    @player = RPS_HASH[player.selection]
    @npc = RPS_HASH[npc.selection]
  end

  def outcome
    if outcome_calculation.zero?
      "It's a tie"
    elsif outcome_calculation == 1
      'You win!'
    else 
      'You lose...'
    end
  end

  private

  def outcome_calculation
    (@player - @npc) % 3
  end
end
