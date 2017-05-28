require 'player'

describe Player do
  subject(:player) {described_class.new("Digby")}

  it "Can have a name" do
    expect(player.name).to eq "Digby"
  end

  it "Can choose a weapon" do
    player.make_weapon_choice(:rock)
    expect(player.weapon_choice).to eq :rock
  end
end
