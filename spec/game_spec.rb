require "game"
describe Game do
  it { is_expected.to respond_to :random }
  it { is_expected.to respond_to :playing }
  it "no moves" do
    singlegame = Game.new(nil)
    expect(singlegame.selected).to eq(nil)
  end
  it "choose rock" do
    singlegame = Game.new("ROCK")
    expect(singlegame.selected).to eq("ROCK")
  end
  it "choose paper" do
    singlegame = Game.new("PAPER")
    expect(singlegame.selected).to eq("PAPER")
  end
  it "choose scissors" do
    singlegame = Game.new("SCISSORS")
    expect(singlegame.selected).to eq("SCISSORS")
  end
end
