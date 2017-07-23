require 'player'

describe Player do
  subject(:Starcy) { described_class.new 'Starcy' }

  it 'returns name of player' do
    expect(subject.name).to eq 'Starcy'
  end

  describe '#player_weapons' do
    it 'returns player_1 weapons' do
      expect(subject.player_weapons(:weapons)).to eq :weapons
    end
  end

end
