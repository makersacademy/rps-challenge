require 'player'

describe Player do
  subject(:player) { described_class.new("Jon") }

  it "has a name" do
    expect(player.name).to eq "Jon"
  end
  it "has a empty weapon slot" do
    expect(player.weapon).to be_empty
  end
  it "can choose a weapon" do
    expect{player.take_weapon("rock")}.to change{player.weapon}.by ["rock"]
  end


end
