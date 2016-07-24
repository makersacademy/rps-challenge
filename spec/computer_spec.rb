require 'computer'

describe Computer do

  subject(:computer) { double :computer }
  let(:computer_attack) { double :computer_attack}

  describe "#random_attack" do
    it "Selects a random attack method from #attack_array" do
      allow(computer).to receive(:random_attack) { "Scissors" }
    end
  end
end
