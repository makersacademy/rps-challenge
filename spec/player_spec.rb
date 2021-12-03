require 'player'

describe Player do

  before do
    @player = Player.new("Kim")
  end

  context "initialize"

  it "should have a name" do
    expect(@player.name).to eq "Kim"
  end

  context "#select_move"

  it "should select a random move if none are specified" do
    srand(1)
    subject.select_move
    expect(subject.move).to eq "Paper"
  end

  it "should be able to select a specific move" do
    subject.select_move("Rock")
    expect(subject.move).to eq "Rock"
  end

end
