require 'player'

describe Player do
  subject(:player) { described_class.new('rock') }


  describe '#choice' do
    it 'returns the choice as a symbol' do
      expect(player.choice).to eq :rock
    end
  end
end
