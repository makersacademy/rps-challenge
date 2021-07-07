require './app/models/game'
require './app/models/player'

describe Game do

  before(:each) do
    Player_1 = double(Player)
  end

  it 'Game.new(player)' do
    subject.add_player(Player_1)
    expect(subject.player).to eq(Player_1)
  end

end
