require 'player'

describe Player do
  subject(:player_1){Player.new("Jonny")}

  it "is initialized with a name" do
    expect(player_1.name).to eq "Jonny"
  end

  it "is initialized with no weapon" do
    expect(player_1.weapon). to be nil
  end

  it "can choose and store a weapon" do
    player_1.choose(:paper)
    expect(player_1.weapon). to eq :paper
  end

end
