require 'player'

describe Player do
  it 'adds a new player with name Bob' do
    player = Player.new('Bob')
    expect(player.name).to eq 'Bob'
  end
end