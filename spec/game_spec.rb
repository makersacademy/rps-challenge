require './lib/game'

describe Game do

  let (:player) { double "game player" }
  subject(:game) { described_class.new("Player 1") }

  it { should be_an_instance_of(Game) }

  it "should be able to store a game" do
    expect(Game.new_game(player)).to be_an_instance_of(Game)
  end

  it "should be able to access the current game" do
    game = Game.new_game(player)
    expect(Game.current_game).to eq game
  end

end
