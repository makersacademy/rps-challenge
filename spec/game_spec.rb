require 'game'

describe Game do
  describe "#match" do
    it "determines the winner in a game of Rock Paper Scissors " do
      expect(subject.match(1, 2)).to eq(2)
    end
    it "returns true if the result of a game of rock paper scissors is a draw" do
      expect(subject.match(2, 2)).to eq(true)
    end
  end
end
