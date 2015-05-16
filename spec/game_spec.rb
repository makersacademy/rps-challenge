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
    allow(player_1).to receive(:player_select).and_return(:rock)
    allow(player_1).to receive(:player_select).and_return(:paper)
    allow(player_1).to receive(:player_select).and_return(:scissors)
  end
  it "player_1 rock beats comp_player scissors" do 
    allow(player_1).to receive(:player_select).and_return(:rock)
    allow(comp_player).to receive(:comp_select).and_return(:scissors)
    expect(game.compare_hands([:rock], [:scissors])).to eq 1
  end
  it "player_1 scissors beats comp_player paper" do 
    allow(player_1).to receive(:player_select).and_return(:scissors)
    allow(comp_player).to receive(:comp_select).and_return(:paper)
    expect(game.compare_hands([:scissors], [:paper])).to eq 1
  end
  it "player_1 paper beats comp_player rock" do 
    allow(player_1).to receive(:player_select).and_return(:paper)
    allow(comp_player).to receive(:comp_select).and_return(:rock)
    expect(game.compare_hands([:paper], [:rock])).to eq 1
  end
  it "draws when player_1 matches comp_player" do
    allow(player_1).to receive(:player_select).and_return(:paper)
    allow(comp_player).to receive(:comp_select).and_return(:paper)
    expect(game.compare_hands([:paper], [:paper])).to eq "Draw"
  end
end
