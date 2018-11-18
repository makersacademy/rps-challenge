require 'weapon'

describe Weapon do
  let(:weapon) { Weapon.new("Rock") }
  let(:other_weapon) { Weapon.new("Scissors") }

  describe "#beats?" do
    it "determines if a weapon beats another" do
      expect(weapon.beats?(other_weapon)).to be true
    end
  end
end
