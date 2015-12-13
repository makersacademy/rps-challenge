require 'player'

describe Player do
  subject(:player_1){described_class.new("Maggie")}

  it 'returns name of player_1' do
    expect(player_1.name).to eq "Maggie"
  end
end
