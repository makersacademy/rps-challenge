require 'computer'

describe Computer do
  let(:computer) { described_class.new }

  describe "#random_option" do
    it "should choose a random option when the computer plays" do
      srand(1)
      expect(computer.random_option).to eq "paper"
    end

    it "should choose a random option when the computer plays" do
      srand(2)
      expect(computer.random_option).to eq "rock"
    end
  end
end
