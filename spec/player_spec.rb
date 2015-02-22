require 'player'

describe Player do
  let(:player) {Player.new("")}

  it "has a name" do
    expect(player.name).to eq ""
  end

  it "can choose a weapon" do
    player.choice = "Rock"
    expect(player.choice).to eq("Rock")
  end


end