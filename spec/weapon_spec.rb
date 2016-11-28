require 'weapons'

describe Weapons do

  subject(:weapons) {described_class.new}

  it "should recognize that there are three weapons" do
    expect(weapons.weapons).to eq([:scissors, :rock, :paper])
    end


context "Testing the game rules" do

  it "should show that rock beats scissors" do
    expect(weapons.rules({:rock => :scissors})).to eq(:player_1_win)
  end
  it "should show that paper beats rock" do
    expect(weapons.rules({:paper => :rock})).to eq(:player_1_win)
  end
  it "should show that scissors beat paper" do
    expect(weapons.rules({:scissors => :paper})).to eq(:player_1_win)
  end
  it "should show that scissors lose to rock" do
    expect(weapons.rules({:scissors => :rock})).to eq(:player_2_win)
  end
  it "should show that rock loses to paper" do
    expect(weapons.rules({:rock => :paper})).to eq(:player_2_win)
  end
  it "should show that paper loses to scissors" do
    expect(weapons.rules({:paper => :scissors})).to eq(:player_2_win)
  end
  it "should show that rock draws with rock" do
    expect(weapons.rules({:rock => :rock})).to eq(:draw)
  end
  it "should show that paper draws with paper" do
    expect(weapons.rules({:paper => :paper})).to eq(:draw)
  end
  it "should show that scissors draws with scissors" do
    expect(weapons.rules({:scissors => :scissors})).to eq(:draw)
  end

end

end
