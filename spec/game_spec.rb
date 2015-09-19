require 'game'

describe Game do

  describe "Player 1 vs Computer" do

    it "returns a draw if both choose same shape" do
      player = Player.new("Harry")
      player.choose("rock")
      computer = Computer.new
      allow(computer).to receive(:choice).and_return(:rock)
      expect(subject.play(player, computer)).to eq :draw
    end

    it "returns rock if rock plays scissors" do
      player = Player.new("Harry")
      player.choose("rock")
      computer = Computer.new
      allow(computer).to receive(:choice).and_return(:scissors)
      expect(subject.play(player, computer)).to eq :rock
    end

    it "returns paper if paper plays rock" do
      player = Player.new("Harry")
      player.choose("paper")
      computer = Computer.new
      allow(computer).to receive(:choice).and_return(:rock)
      expect(subject.play(player, computer)).to eq :paper
    end

    it "returns scissors if scissors plays paper" do
      player = Player.new("Harry")
      player.choose("scissors")
      computer = Computer.new
      allow(computer).to receive(:choice).and_return(:paper)
      expect(subject.play(player, computer)).to eq :scissors
    end

  end

  describe "#winner" do

    it "should declare a winner" do
      player = Player.new("Harry")
      player.choose("rock")
      computer = Computer.new
      allow(computer).to receive(:choice).and_return(:scissors)
      expect(subject.winner(player, computer)).to eq "Harry, you are the winner!"
    end

    it "should declare a tie" do
      player = Player.new("Harry")
      player.choose("rock")
      computer = Computer.new
      allow(computer).to receive(:choice).and_return(:rock)
      expect(subject.winner(player, computer)).to eq "It is a tie!"
    end

    it "should declare a loser" do
      player = Player.new("Harry")
      player.choose("rock")
      computer = Computer.new
      allow(computer).to receive(:choice).and_return(:paper)
      expect(subject.winner(player, computer)).to eq "Harry, you are the loser!"
    end

  end

end
