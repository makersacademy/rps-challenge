require 'player'

describe Player do
  subject(:player) { described_class.new("Riya") }

  it 'returns a name' do
    expect(player.name).to eq 'Riya'
  end

  describe '#move' do
    let(:option) { double :option }
    it 'stores the players move' do
      expect(player.move(option)).to eq option
    end
  end
end
