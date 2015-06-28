require 'rps'

describe RPS do

  # it "responds to the play method" do
  # expect(subject.class).to respond_to(play).with(2).arguments
  # end

  it "can let the player lose" do
  expect(RPS.play :rock, :paper).to eq "Player 2 Wins"
  end

  it "can let the player win" do
  expect(RPS.play :scissors, :paper).to eq "Player 1 Wins"
  end

  it "can let the player draw" do
  expect(RPS.play :scissors, :scissors).to eq "Draw"
  end

end