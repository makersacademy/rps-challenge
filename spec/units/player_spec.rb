require 'player'

describe Player do
  subject(:player) { described_class.new('Paul') }
  
  it 'initializes with a name' do
    expect(player.name).to eq 'Paul'
  end

  describe '#computer?' do
    context 'when player controlled' do
      it 'returns false' do
        expect(player.computer?).to be false
      end
    end
    context 'when computer controlled' do
      it 'returns true' do
        computer_player = described_class.new('Computer', true)
        expect(computer_player.computer?).to be true
      end
    end
  end
end
