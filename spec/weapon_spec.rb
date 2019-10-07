require 'weapon'

describe Weapon do
  let(:weapon) { Weapon.new("Rock") }

  describe "beats" do
    it "sets a string for a winning result" do
      other_weapon = Weapon.new("Scissors")
      expect(weapon.beats(other_weapon)).to eq "YOU HAVE WON!"
    end

    it "sets a string for a tie result" do
      other_weapon = Weapon.new("Rock")
      weapon.beats(other_weapon)
      expect(weapon.beats(other_weapon)).to eq "it is a tie."
    end

    it "sets a string for a losing result" do
      other_weapon = Weapon.new("Paper")
      weapon.beats(other_weapon)
      expect(weapon.beats(other_weapon)).to eq "you have lost."
    end
  end
end
