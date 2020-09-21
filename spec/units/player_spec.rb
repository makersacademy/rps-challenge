require 'player'

describe Player do
  subject(:player) { Player.new("Gerald") }
  it 'has a name' do
    expect(player.name).to eq "Gerald"
  end
end
