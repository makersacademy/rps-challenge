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

end
