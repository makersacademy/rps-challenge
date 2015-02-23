require 'player'

describe Player do

  let(:player){Player.new("Thomas")}
  let(:weapon){double :weapon, choose_weapon: :scissor}

  it "should have a name" do
    expect(player.name).to eq("Thomas")
  end

  it "should be able to choose a weapon" do
    player.choose_weapon(:scissor)
    expect(player.weapon).to eq(:scissor)
  end

   it "should be able to choose weapon randomly" do
    allow(player).to receive(:choose_random_weapon).and_return(:scissor)
    expect(player.choose_random_weapon).to eq(:scissor)
  end
  
end