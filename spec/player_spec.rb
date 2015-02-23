require 'player'

describe Player do

  let(:player){Player.new("Thomas")}

  it "should have a name" do
    expect(player.name).to eq("Thomas")
  end

  it "should be able to choose a weapon" do
    player.weapon = :scissor
    expect(player.weapon).to eq(:scissor)
  end

   it "should be able to choose weapon randomly" do
    allow(player).to receive(:random_weapon).and_return(:scissor)
    expect(player.random_weapon).to eq(:scissor)
  end
  
end