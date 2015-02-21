require 'game_weapons'

describe GameWeapons do

  let(:weapons) {GameWeapons.new}


  it "is created with 3 weapons rock, paper and scissors" do
    expect(weapons.weapons).to match_array [:rock, :scissors, :paper]
  end

  it "will rasie and error if player selects unavalible weapon" do
    expect{ weapons.select_weapon(:gun) }.to raise_error(RuntimeError, "Can't select that weapon")
  end
end