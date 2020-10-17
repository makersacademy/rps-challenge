require 'model/player'

describe Player do

  let(:player) {described_class.new("Horatio")}

  it "stores the player's name and returns it" do
    expect(player.name).to eq("Horatio")
  end
  it "stores the player's choice and returns it" do
    player.choose(:rock)
    expect(player.choice).to eq(:rock)
  end
end
