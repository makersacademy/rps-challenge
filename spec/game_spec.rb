require "game"

describe Game do
  it "initializes player 1 to nil" do
    game = Game.new
    expect(game.player_1).to eq nil
  end
  it "initializes player 2 to nil" do
    game = Game.new
    expect(game.player_2).to eq nil
  end
end
