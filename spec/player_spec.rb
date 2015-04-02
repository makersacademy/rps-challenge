require 'player'

describe Player do
  let(:player){Player.new}

  it "has a name" do
    player.name = "Bob"
    expect(player.name).to eq "Bob"
  end

  it "can make a choice" do
    expect(player.choice = :rock).to eq :rock
  end

end