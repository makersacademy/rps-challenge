require 'game'
describe Game do
  let(:game){Game.new(player_1, comp_player)}
  let(:player_1){double :player_1}
  let(:comp_player){double :comp_player}

  it "knows who player 1 is" do
    expect(game.player_1).to eq player_1
  end
  it "knows who computer player is" do
    expect(game.comp_player).to eq comp_player
  end
  it "knows who's turn it is" do
    expect(game.turn).to eq player_1
  end
  it "lets computer randomly select hand" do
    expect(game.comp_generator).to be_an (Array)
  end
  it "knows player selects a hand" do
    allow(player_1).to receive(:select).and_return(:rock)
    allow(player_1).to receive(:select).and_return(:paper)
    allow(player_1).to receive(:select).and_return(:scissors)
  end
end
