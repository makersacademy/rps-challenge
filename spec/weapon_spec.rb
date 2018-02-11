require 'weapon'

describe Weapon do
  subject(:weapon) { described_class.new('Rock') }
  describe "#initialize" do
    it "changes input to symbol" do
      expect(weapon.type).to be_a(Symbol) 
    end
  end
end
