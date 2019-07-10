require 'player'

describe Player do

  subject(:tim) { Player.new('Tim') }
  subject(:mittens) { Player.new('Mittens') }

  describe '#name' do
    it 'returns the name' do
      expect(tim.name).to eq 'Tim'
    end
  end

  # describe '#hit_points' do
  #   it 'returns the hit points' do
  #     expect(dave.hp).to eq described_class::DEFAULT_HIT_POINTS
  #   end
  # end
  #
  # describe '#receive_damage' do
  #   it 'reduces the player hit points' do
  #     expect { dave.receive_damage }.to change { dave.hp }.by(-10)
  #   end
  # end

end
