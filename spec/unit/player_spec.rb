require_relative '../../lib/player'

describe Player do
  subject(:player) { described_class.new("Test name") }

  it 'has a name' do
    expect(player.name).to eq "Test name"
  end

  it 'can make a move' do
    player.choose(:rock)
    expect(player.move). to eq :rock
  end

  it 'fails when making an invalid move' do
    expect { player.choose(:bird) }.to raise_error "Invalid move"
  end
end
