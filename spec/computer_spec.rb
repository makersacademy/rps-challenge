require 'computer'

describe Computer do

  subject(:computer) { double :computer }

  describe "#random_attack" do
    it "Selects a random attack method from #ATTACK_ARRAY" do
      allow(computer).to receive(:random_attack) { "Scissors" }
    end
  end
end
