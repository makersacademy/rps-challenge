require 'game'

describe Game do

  let(:player) { double :player }
  subject { described_class.new(player) }

  it "should return a player instance" do
    expect(subject.player).to eq player
  end

  it "should return an instance of itself using a class method" do
    Game.new_game(player)
    expect(Game.instance).to be_an_instance_of Game
  end
end
