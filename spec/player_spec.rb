require 'player'

describe Player do
  subject(:player) { described_class.new("Player") }
  
  it "saves a name" do
    expect(player.name).to eq "Player"
  end

  it "starts with a score of 0" do
    expect(player.score).to be 0
  end

  it "can increase the score" do
    player.increase_score
    expect(player.score).to eq(0 + described_class::DEFAULT_POINTS)
  end

  it "can decrease the score" do 
    player.decrease_score
    expect(player.score).to eq(0 - described_class::DEFAULT_POINTS)
  end
end