require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe "#defaults" do

    it "contains the options, rock, paper, scissors" do
      expect(described_class::WEAPONS.length).to eq 3
      expect(described_class::WEAPONS).to include :rock, :paper, :scissors
    end
  end

  describe "#attack"
    it "returns an option from weapons array" do
      expect(described_class::WEAPONS).to include computer.attack
    end

end
