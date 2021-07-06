require 'referee'

describe Referee do
  subject(:referee) { Referee.new("Rock", "Scissors") }

  describe "#decide_winner" do
    it "should return a number between 1 and 3" do
      expect(subject.decide_winner).to be_between(1, 3)
    end
  end

  describe "#announce" do
    it "announces the winner of the game" do
      expect(subject.announce).to eq "You won!"
    end
  end

end
