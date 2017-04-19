require "computer"

describe Computer do
  subject(:computer) { described_class.new }

  describe "#attack" do
    it "returns a random attack" do
      expect(Computer::ATTACKS).to include computer.attack
    end
  end
end