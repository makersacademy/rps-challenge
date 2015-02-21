require 'game_umpire'

describe GameUmpire do

  let(:match) { GameUmpire.new }

  it "knows that rock beats scissors" do
    expect(match.rule_logic([:rock, :scissors])).to eq :rock
  end

  it "knows that scissors beats paper" do
    expect(match.rule_logic([:scissors, :paper])).to eq :scissors
  end

  it "knows that paper beats rock" do
    expect(match.rule_logic([:rock, :paper])).to eq :paper
  end

  it "knows that the same weapon choice is a draw" do
    expect(match.rule_logic([:paper, :paper])).to eq :draw
  end

end