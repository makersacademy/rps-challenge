require 'player'

describe Player do
  it 'it can create a new instance of player with the argument of name' do
    player = Player.new("James")
    expect(player.name).to eq "James"
  end
end