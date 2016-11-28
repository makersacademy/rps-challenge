require 'game'


describe Game do

subject(:game) { described_class.new(:player_1) }

context "Entering player 1's name" do

it "should have a player_1" do
  expect(game).to respond_to(:player_1)
end

end

context "making the first selection" do

  it "should show the selection is an empty hash" do
    expect(game.selections).to eq({})
  end

  it "should show that there is a computer as player 2" do
    expect(game).to respond_to(:player_2)
  end

  it "should show that player 2 is the Computer" do
    expect(game.player_2.name).to eq("Computer")
  end

  it "should show that player 1 has added a rock" do
    game.player_1_select("Rock")
    expect(game.selections).to eq({:rock => nil})
  end

end
  # it "should allow the computer to make a selection" do
  #   game.player_1.select("Rock")
  #   expect(game.computer.selection).to eq("Rock")
  # end

end
