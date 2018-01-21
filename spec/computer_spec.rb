require "computer"

describe Computer do
  subject(:computer) { described_class.new }
  subject(:weapons) { double :weapons }

  describe "initialize" do
    it "computer name should be computer by default" do
      expect(computer.name).to eq "computer"
    end

    it "should have three weapons by default" do
      expect(Computer::WEAPONS.length).to eq 3
    end
  end

  describe "#choice" do
    it "should choose a random weapon" do
      expect(weapons).to receive(:sample)
      computer.choice(weapons)
    end
  end

end
