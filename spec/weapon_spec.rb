require 'weapon'

describe Weapon do
  subject(:weapon) { described_class.new(:rock) }
  describe "#initialize" do
    it "changes input to symbol" do
      expect(weapon.type).to be_a(Symbol)
    end
  end
  describe "#winner" do
    it "returns :rock if second weapon is :scissors" do
      expect(weapon.winner(Weapon.new(:scissors))).to eq true
    end
  end
end
