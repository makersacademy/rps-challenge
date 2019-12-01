require 'move'

describe Move

context "After clicking a button" do
  it "Initlizes with a players move" do
    player = Move.new "Rock"
    expect(player.value).to eq "Rock"
  end
end
