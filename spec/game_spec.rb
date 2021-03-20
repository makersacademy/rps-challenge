require 'game'

describe Game do
  describe "#match" do
    let(:rpsls) { Game.new(5) }
    it "determines the winner in a game of Rock Paper Scissors " do
      expect(subject.match(1, 2)).to eq(2)
    end
    it "returns true if the result of a game of rock paper scissors is a draw" do
      expect(subject.match(2, 2)).to eq(true)
    end
    it "determines the winner in a game of Rock Paper Scissors Lizard Spock" do
      expect(rpsls.match(2, 4)).to eq(2)
    end
  end
end
