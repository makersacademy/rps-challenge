require './lib/player'

describe Player do
  subject(:player) { described_class.new('Adam') }

  describe '#new' do
    it 'should initialise @name and returns @name' do
      expect(player.name).to eq('Adam')
    end
  end
end
