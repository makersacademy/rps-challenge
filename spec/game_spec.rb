require 'game'

describe Game do

  let(:player) { double :player, name: "David" }
  subject(:game) { described_class.new(player)}

  it "can create an instance of itself" do
    expect(Game.create(player)).to be_an_instance_of(Game)
  end

  it "initializes a game with a player", :focus do
    expect(game.player_one).to eq player
  end
end
