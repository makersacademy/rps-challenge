require "computer"

describe Computer do

  subject(:weapons) { double :weapons }
  subject(:computer) { described_class.new("computer", weapons) }

  describe "initialize" do
    it "computer name should be computer by default" do
      test = described_class.new
      expect(test.name).to eq "computer"
    end

    it "should have three weapons by default" do
      expect(Computer::WEAPONS.length).to eq 3
    end
  end

  describe "#move" do
    it "should choose a random weapon" do
      expect(weapons).to receive(:sample)
      computer.move
    end

    it "should set choice to weapon a random weapon" do
      allow(weapons).to receive(:sample).and_return("paper")
      computer.move
      expect(computer.choice).to eq "paper"
    end

    it "should accept one arguement but not affect its process" do
      allow(weapons).to receive(:sample).and_return("paper")
      expect(computer).to respond_to(:move).with(1).argument
      computer.move("idea")
    end
  end

end
