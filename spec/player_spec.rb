require 'player'

describe Player do
  let(:player) { described_class.new("Dumbledore") }

  describe "initialize" do
    it "should start with no chosen option" do
      expect(player.chosen_option).to be nil
    end
  end

  describe "#choose_option" do
    it "should assign new chosen option " do
      player.choose_option("rock")
      expect(player.chosen_option).to eq "rock"
    end
  end

  describe "#computer_option" do
    it "should choose a random option when the computer plays" do
      srand(1)
      expect(player.computer_option).to eq "paper"
    end

    it "should choose a random option when the computer plays" do
      srand(2)
      expect(player.computer_option).to eq "rock"
    end
  end
end
