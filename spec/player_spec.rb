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

  it "has a method which returns their weapon" do
    player_1.choose(:stone)
    expect(player_1.get_weapon).to eq :stone
  end

end
