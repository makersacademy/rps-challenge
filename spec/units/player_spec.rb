require 'player'

describe Player do
  it 'adds a new player with name Bob' do
    player = Player.new('Bob')
    expect(player.name).to eq 'Bob'
  end

  it 'adds a new player with no rock-paper-scissor choice' do
    player = Player.new('Bob')
    expect(player.choice).to be_nil
  end
end
