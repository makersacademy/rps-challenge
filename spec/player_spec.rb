require 'player'

describe Player do

  subject(:player1){described_class.new "Iryna"}

  describe "#name" do
    it "return Player's name" do
      expect(player1.name).to eq "Iryna"
    end
  end

  describe "choice_options" do
    it "has passed or default choice options array" do
      expect(player1.choice_options).to be_instance_of(Array)
    end
  end

  describe "#make_choice" do
    it "return player's choice for the game" do
      player1.make_choice('Rock')
      expect(player1.player_choice).to eq :rock
    end
  end



end