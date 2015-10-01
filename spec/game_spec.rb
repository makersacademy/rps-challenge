require 'game'

describe Game do

  describe "#winner" do

    let(:computer){double :computer}
    let(:player){double :player}

    it "should declare a winner" do
      allow(player).to receive(:shape).and_return(:rock)

      allow(computer).to receive(:shape).and_return(:scissors)
      expect(subject.play(player, computer)).to eq "Congratulations, you are the winner!"
    end

    it "should declare a tie" do
      allow(player).to receive(:shape).and_return(:rock)
      allow(computer).to receive(:shape).and_return(:rock)
      expect(subject.play(player, computer)).to eq "It is a tie!"
    end

    it "should declare a loser" do
      allow(player).to receive(:shape).and_return(:rock)
      allow(computer).to receive(:shape).and_return(:paper)
      expect(subject.play(player, computer)).to eq "Sorry, you are the loser!"
    end

  end

end
