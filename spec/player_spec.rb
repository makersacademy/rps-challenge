require 'player'
describe Player do
  subject(:player) { Player.new("name") }

  it 'returns its own name' do
    expect(player.name).to eq "name"
  end

  it 'should return the players move' do
    expect(player.choice).to eq 'rock'
  end

end
