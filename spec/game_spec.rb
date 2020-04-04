require 'game'

describe Game do
  let(:player) { double(:player1) }
  let(:player_class) { double(:player_class, :new => player) }

  subject do
    Game.new("Phil", player_class)
  end

  it 'has to be created by specifying a player name' do
    expect(Game).to respond_to(:new).with(2).argument
  end

  it 'tells you who is playing' do
    expect(subject.player).to eq(player)
  end
end
