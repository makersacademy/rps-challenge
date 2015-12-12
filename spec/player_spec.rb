require 'player'

describe Player do
  subject(:player) { described_class.new 'Michael' }

  describe '#name' do
    it 'should be able to return the player\'s name' do
      expect(player.name).to eq 'Michael'
    end
  end

end
