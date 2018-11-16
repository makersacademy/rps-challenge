require 'weapon'

describe Weapon do
  let(:weapon) { Weapon.new("Rock") }

  describe "initialize" do
    it "creates an instance of Weapon" do
      expect(weapon.instance_of? Weapon).to be true
    end
  end
end
