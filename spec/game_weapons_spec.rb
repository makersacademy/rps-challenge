require 'game_weapons'

describe GameWeapons do

  let(:weapons) {GameWeapons.new}


  it "is created with 3 weapons rock, paper and scissors" do
    expect(weapons.weapons).to match_array [:rock, :scissors, :paper]
  end

  it "will return false if player selects unavalible weapon" do
    expect(weapons.select_weapon(:gun)).to be false
  end

  it "will randomly choose one weapon from the avalible weapons only" do
    expect(weapons.weapons).to include(weapons.random_weapon)
  end
end