require "./lib/game.rb"

describe Game do

  s = described_class.new("Mike")

  it "when instantiated should have two players ready to play" do
    expect([s.player1, s.player2].any?{ |player| !player.instance_of?(Player) }).to eq(false)
  end

  it "check who won out of two values(paper, scissors)" do
    expect(s.win_or_lose(:paper, :scissors)).to eq(:lose)
  end

  it "check who won out of two values(scissors, paper)" do
    expect(s.win_or_lose(:scissors, :paper)).to eq(:win)
  end

  it "check who won out of two values(paper, rock)" do
    expect(s.win_or_lose(:paper, :rock)).to eq(:win)
  end

  it "check who won out of two values(rock, paper)" do
    expect(s.win_or_lose(:rock, :paper)).to eq(:lose)
  end

  it "check who won out of two values(rock, scissors)" do
    expect(s.win_or_lose(:rock, :scissors)).to eq(:win)
  end

  it "check who won out of two values(scissors, rock)" do
    expect(s.win_or_lose(:scissors, :rock)).to eq(:lose)
  end

  it "check who won out of two values(rock, rock)" do
    expect(s.win_or_lose(:rock, :rock)).to eq(:draw)
  end

  it "check who won out of two values(paper, paper)" do
    expect(s.win_or_lose(:paper, :paper)).to eq(:draw)
  end

  it "check who won out of two values(scissors, scissors)" do
    expect(s.win_or_lose(:scissors, :scissors)).to eq(:draw)
  end

  it "returns error id invalid values are passed" do
    expect(s.win_or_lose(:wrong, :scissors)).to eq(:error)
  end

  it "returns error id invalid values are passed" do
    expect(s.win_or_lose(:scissors, :wrong)).to eq(:error)
  end

  it "check the whole chain of execution for results_setup" do
    s.player1.set_option(:rock)
    s.player2.set_option(:paper)
    expect(s).to receive(:win_or_lose).with(:rock, :paper).and_return(:lose)
    s.results_setup
  end



end