require "computer.rb"

describe Computer do
  subject(:computer)  { described_class.new }

  describe "#name" do
    it "returns 'Computer' name" do
      expect(computer.name).to eq "Computer"
    end
  end

  describe "#random_weapon" do
    it "selects a random weapon" do
      allow(computer).to receive(:random_weapon).and_return("Scissors")
      expect(computer.random_weapon).to eq "Scissors"
    end
  end
end
