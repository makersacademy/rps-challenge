require 'player'

describe Player do
  subject(:player) { described_class.new("Marketeer") }

  it 'has instance variables for wins, losses and draws' do
    expect(player.wins).to eq 0
    expect(player.losses).to eq 0
    expect(player.draws).to eq 0
  end

  describe '#name' do
    it 'returns its name' do
      expect(player.name).to eq "Marketeer"
    end
  end

end
