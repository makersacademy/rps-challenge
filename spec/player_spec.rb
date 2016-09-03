require 'player'

describe Player do
  subject(:player) {described_class.new('James')}

  describe '#name' do
    it 'returns the players name' do
      expect(player.return_name).to eq 'James'
    end
  end

end
