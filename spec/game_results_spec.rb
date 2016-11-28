require 'game'


describe Game do

subject(:game) { described_class.new(:player_1) }

#This is with game.computer_select hard coded to return paper. Couldnt' work out how to stub this.
  it "should show the result" do
    game.player_1_select("Rock")
    game.computer_select
    expect(game.result[0]).to eq(:player_2_win)
  end

  it "should show the result" do
    game.player_1_select("Paper")
    game.computer_select
    expect(game.result[0]).to eq(:draw)
  end

  it "should show the result" do
    game.player_1_select("Scissors")
    game.computer_select
    expect(game.result[0]).to eq(:player_1_win)
  end

end
