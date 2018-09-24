require 'random_move'

describe RandomMove do

  moves_std = described_class::MOVES
  moves_spock = described_class::MOVES_SPOCK

  it 'returns a random move' do
    random_move = described_class.new('standard')
    allow(moves_std).to receive(:sample) { 'paper' }
    expect(random_move.move).to eq 'paper'
  end
  it 'can return spock moves' do
    random_move = described_class.new('spock')
    allow(moves_spock).to receive(:sample) { 'lizard' }
    expect(random_move.move).to eq 'lizard'
  end

end
