require 'player'

describe Player do

  before do
    @player = Player.new("Kim", "Rock")
  end

  context "initialize"

  it "should have a name" do
    expect(@player.name).to eq "Kim"
  end

  it "should have a move" do
    expect(@player.move).to eq "Rock"
  end

  it "should select a random move if none are specified" do
    srand(1)
    expect(subject.move).to eq "Paper"
  end

end
