require 'player'

describe Player do
  INITIAL_HIT_POINTS = Player::INITIAL_HIT_POINTS
  POINTS_LOST_MOVE = Player::POINTS_LOST_MOVE

  subject(:player_one){described_class.new}
  subject(:player_two){described_class.new}

  describe '#runs_random_choice' do
    it 'randoms a possible outcome for player_two' do
      expect(Player::POSSIBLE_OUTCOMES).to include(player_two.runs_random_choice)
    end
  end

  describe '#Hit points' do
    it 'initial hit point when game starts' do
      expect(player_one.hit_points).to eq(INITIAL_HIT_POINTS)
    end

    it 'hit points after a bad move' do
      expect(player_one.deduct_hp).to eq(INITIAL_HIT_POINTS - POINTS_LOST_MOVE)
    end
  end
end
