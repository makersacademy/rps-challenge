require 'game_items'

describe GameItems do

  let(:weapons) {GameItems.new}


  it "can create a rock" do
    weapons.add_weapon({rocks: "rock"})
    expect(weapons.items[:rocks]).to eq "rock"
  end

  it "can create some paper" do
    weapons.add_weapon({paper: "paper"})
    expect(weapons.items[:paper]).to eq "paper"
  end

  it "can create a pair of scissors" do
    weapons.add_weapon({scissors: "scissors"})
    expect(weapons.items[:scissors]).to eq "scissors"
  end

  it "can return just the item values" do
    weapons.add_weapon({paper: "paper"})
    weapons.add_weapon({scissors: "scissors"})
    weapons.add_weapon({rocks: "rock"})
    expect(weapons.weapon_text).to eq ["paper","scissors","rock"]

  end
end