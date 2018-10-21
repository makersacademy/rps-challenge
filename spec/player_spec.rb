require 'player'

describe Player do
  subject(:chloe) { described_class.new('Chloe') }

  describe '#name' do
    it 'should return the player\'s name' do
      expect(chloe.player_name).to eq 'Chloe'
    end
  end

end
