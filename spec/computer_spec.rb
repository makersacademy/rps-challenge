require 'computer'

describe Computer do

  let(:game_weapons) {double :GameWeapons}

  it "should return weapon paper when assigned this weapon" do
    comp = Computer.new
    allow(game_weapons).to receive(:random_weapon).and_return("paper")
    comp.random_weapon(game_weapons)
    expect(comp.weapon).to eq "paper"
  end

end
