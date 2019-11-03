require 'player'

describe Player do
  subject(:player_1){ described_class.new("Odin") }

  it 'returns the player name when called' do
    expect(player_1.name).to eq "Odin"
  end

  it 'plays the move that the player selects' do
    allow(player_1).to receive(:move).and_return("Rock")
    expect(player_1.move).to eq "Rock"
  end

end
