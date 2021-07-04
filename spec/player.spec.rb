require 'player'

describe Player do
  subject(:player) { described_class.new("Jane") }

describe '#name' do
  it ' returns player name' do
    expect(player.name).to eq 'Jane'
  end
  it 'returns a #player_choice' do
    player.player_choice("Rock")
    expect(player.move).to eq "Rock"
  end
end
end
