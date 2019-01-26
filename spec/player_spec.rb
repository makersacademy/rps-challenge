require 'player'

describe Player do

  before(:each) do
    @player = Player.new("Mike Tyson")
  end

  it "should show the player's name" do
    expect(@player.name).to eql("Mike Tyson")
  end

end
