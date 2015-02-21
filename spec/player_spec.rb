require 'player'

describe Player do

  let(:player){Player.new("Thomas")}
  let(:weapon){double :weapon, choose_weapon: :scisor}

  it "should have a name" do
    expect(player.name).to eq("Thomas")
  end

  it "should be able to choose a weapon" do
    player.choose_weapon(:scisor)
    expect(player.weapon).to eq(:scisor)

  end
  
end