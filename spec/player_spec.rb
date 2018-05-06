require 'player'

describe Player do
  subject(:player) { described_class.new('Bob') }

  describe '#name' do
    it 'saves input name as an instance variable' do
      expect(player.name).to eq('Bob')
    end
  end
end 
