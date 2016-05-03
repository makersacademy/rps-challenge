require 'player'

describe Player do
  
  subject(:player) { described_class.new("Lexi") }

  it 'returns player name' do
    expect(player.name).to eq "Lexi"
  end

  it 'returns player choice' do
    player.choose('Lizard')
    expect(player.choice).to eq 'Lizard'
  end
end