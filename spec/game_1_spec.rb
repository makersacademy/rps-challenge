require 'game_1'

describe Game_1 do

  subject(:game) { described_class.new(elly, ryan) }
  let(:elly) { double :elly }
  let(:ryan) { double :ryan }
  let("Rock") { double rock }
  let("Scissors") { double Scissors }
  let("Paper") { double Paper }

  it "receive the first player and player 1" do
    expect(game.player_1).to eq elly
  end

  it "receive the second player as player 2" do
    expect(game.player_2).to eq ryan
  end

  it "allow user to choose action and return result - tie" do
    game.player_1_action("Rock")
    game.player_2_action("Rock")
    expect(game.check_tie).to eq true
  end

  it "allow user to choose action and return el win" do
    game.player_1_action("Rock")
    game.player_2_action("Scissors")
    expect(game.result).to eq elly
  end

  it "allow user to choose action and return ry win" do
    game.player_1_action("Paper")
    game.player_2_action("Scissors")
    expect(game.result).to eq ryan
  end

end