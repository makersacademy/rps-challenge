require 'gamesession'
describe GameSession do
  it "allows player to choose an action" do
    expect subject.player_choose(2).should match("scissors")
    expect subject.player_choose(0).should eq("rock")
    expect subject.player_choose(4).should eq("spock")
    expect subject.player_choose(1).should eq("paper")
    expect subject.player_choose(3).should eq("lizard")
  end

  it "will choose a random move" do
    expect(subject).to respond_to(:cpu_choose)
  end

  it "should take player and computer action for comparison" do
    expect subject.round(2).should include("scissors")
    expect subject.round(3).should include("lizard")
    expect subject.round(0).should include("rock")
    expect subject.round(4).should include("spock")
    expect subject.round(1).should include("paper")
  end
end
