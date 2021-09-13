require 'computer'

describe Computer do

  describe "#name" do
    it "returns the name" do
      expect(subject.name).to eq "Archaon"
    end
  end

  describe "#choose" do  
    it "returns the computer move" do
      allow(Computer::WEAPONS).to receive(:sample).and_return(:Rock)
      expect(subject.choose).to eq :Rock
    end

    it "returns the computer move" do
      allow(Computer::WEAPONS).to receive(:sample).and_return(:Paper)
      expect(subject.choose).to eq :Paper
    end

    it "returns the computer move" do
      allow(Computer::WEAPONS).to receive(:sample).and_return(:Scissors)
      expect(subject.choose).to eq :Scissors
    end
  end
end
