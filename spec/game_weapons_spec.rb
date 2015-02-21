require 'game_weapons'

describe GameWeapons do

  let(:weapons) {GameWeapons.new}


  it "can create a rock" do
    weapons.add_weapon( {rocks: "rock"} )
    expect(weapons.weapons[:rocks]).to eq "rock"
  end

  it "can create some paper" do
    weapons.add_weapon( {paper: "paper"} )
    expect(weapons.weapons[:paper]).to eq "paper"
  end

  it "can create a pair of scissors" do
    weapons.add_weapon( {scissors: "scissors"} )
    expect(weapons.weapons[:scissors]).to eq "scissors"
  end

  it "can return just the weapon text description" do
    weapons.add_weapon( {paper: "paper"} )
    expect(weapons.weapon_text(:paper)).to eq "paper"
  end

  it "will rasie and error if player selects unavalible weapon" do
    expect{ weapons.select_weapon(:gun) }.to raise_error(RuntimeError, "Can't select that weapon")
  end
end