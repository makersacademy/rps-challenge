require 'computer'

describe Computer do
  let(:computer) { described_class.new }

  describe "#random_option" do
    it "should choose a random option when the computer plays" do
      srand(1)
      computer.random_option
      expect(computer.chosen_option).to eq "paper"
    end

    it "should choose a random option when the computer plays" do
      srand(2)
      computer.random_option
      expect(computer.chosen_option).to eq "rock"
    end
  end
end
