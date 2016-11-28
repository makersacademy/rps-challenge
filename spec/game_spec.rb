require 'game'


describe Game do

subject(:game) { described_class.new(:player_1) }

context "Entering player 1's name" do

it "should have a player_1" do
  expect(game).to respond_to(:player_1)
end

end

context "making the first selection" do

  it "should be able to show the player's selection" do
    expect(game).to respond_to(:selection)
  end

  it "should show the selection is rock" do
    game.select("Rock")
    expect(game.selection).to eq("Rock")
  end

  #it "should allow the computer to make a selection" do

end

end
