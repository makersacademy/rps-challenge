require "computer"

describe Computer do
  let(:computer) { Computer.new }

  describe "#random_choice" do
    it "should return 'Rock' for random seed 0" do
      srand(0)
      expect(computer.random_choice).to eq "Rock"
    end

    it "should return 'Paper' for random seed 1" do
      srand(1)
      expect(computer.random_choice).to eq "Paper"
    end

    it "should return 'Scissors' for random seed 3" do
      srand(3)
      expect(computer.random_choice).to eq "Scissors"
    end
  end
end
