require "multigame"
describe MultiGame do
  it { is_expected.to respond_to :playing }
  it "no moves" do
    multigame = MultiGame.new(nil, nil)
    expect(multigame.p1_selected).to eq(nil)
    expect(multigame.p2_selected).to eq(nil)
  end
  it "both select the same" do
    multigame = MultiGame.new("ROCK", "ROCK")
    allow(multigame).to receive(:playing).and_return("You tied")
  end
  it "player 1 wins" do
    multigame = MultiGame.new("ROCK", "PAPER")
    allow(multigame).to receive(:playing).and_return("Player 1 wins")
  end
  it "player 2 wins" do
    multigame = MultiGame.new("SCISSORS", "PAPER")
    allow(multigame).to receive(:playing).and_return("Player 2 wins")
  end
end
