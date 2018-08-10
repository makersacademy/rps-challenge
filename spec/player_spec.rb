require 'player'

describe Player do

  subject(:player1) { described_class.new("Marek") }

  it "Knows it's name" do
    expect(player1.name).to eq "Marek"
  end

  it "Starts with a choice of nil" do
    expect(player1.choice).to be nil
  end

  describe "#make_choice" do
    it "Sets @choice to the string passed" do
      player1.make_choice("rock")
      expect(player1.choice).to eq "rock"
    end
  end

  describe "#make_random_choice" do
    it "Sets @choice to either rock, paper, or scissors at random" do
      allow(Kernel).to receive(:rand).and_return(1)
      player1.make_random_choice
      expect(player1.choice).to eq "paper"
    end
  end

end
