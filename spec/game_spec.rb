require './lib/game'

describe Game do

  let (:player) { double "game player" }
  subject(:game) { described_class.new("Player 1") }

  it { should be_an_instance_of(Game) }

  it "should have a class instance variable which can store the current game" do
    expect(Game.new_game(player)).to be_an_instance_of(Game)
  end

end
