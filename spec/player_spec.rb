require 'player'

describe Player do
  subject(:player) {described_class.new("Roberto", "Human")}
  
  it 'returns player name' do
    expect(player.name).to eq "Roberto"
  end
end



