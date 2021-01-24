require 'game'

describe "Game" do

  it "recognises the player's choice" do
    game = Game.new("Rock")
    expect(game.character).to eq("Rock")
  end

end
