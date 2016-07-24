require 'computer'

describe Computer do

  subject(:computer) { double :computer }

  describe "#random_attack" do
    it "Selects a random attack method from #ATTACK_ARRAY" do
      allow(computer).to receive(:random_attack) { "Scissors" }
    end
  end

  describe "#result" do
    it "Displays result of game" do
      allow(computer).to receive(:result) { "Win" }
    end
  end
end
