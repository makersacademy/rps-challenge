require 'player'

describe Player do
  subject(:player_1){ described_class.new("Odin") }

  it 'returns the player name when called' do
    expect(player_1.name).to eq "Odin"
  end

end
