require "computer"

describe Computer do
  subject(:computer) {Computer.new}
  describe "#initialize" do
    it "has not made a choice yet" do
      expect(computer.choice).to eq nil
    end
  end
  describe "#random_weapon" do
    it "returns a random weapon" do
      allow(computer).to receive(:random_weapon).and_return("Scissors")
      expect(computer.random_weapon).to eq "Scissors"
    end
  end
  describe "#choose_weapon" do
    it "assigns random weapon to choice" do
      allow(computer).to receive(:random_weapon).and_return("Scissors")
      computer.choose_weapon
      expect(computer.choice).to eq "Scissors"
    end
  end
end
