require 'player'
require 'weapon'

describe Player do
  let(:shirley) { Player.new('Shirley') }
  it "returns the player's name" do
    expect(shirley.name).to eq "Shirley"
  end

  describe 'add_weapon' do
    let(:shirley) { Player.new('Shirley') }
    let(:weapon) { Weapon.new('scissors') } 
    it 'it provides a player with a weapon' do
      shirley.add_weapon(weapon)
      expect(shirley.weapon.type).to eq 'scissors'
    end
  end 
end
