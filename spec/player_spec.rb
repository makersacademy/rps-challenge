require 'player'

describe Player do
  context "human player" do

    subject { Player.new("Spok") }

    describe "#make_move" do
      it "lets the player make a move" do
        expect(subject).to respond_to(:make_move).with(1).argument
      end

      it "saves the player's move" do
        subject.make_move(:rock)
        expect(subject.move).to eq :rock
      end
    end

  end

  context "CPU player" do

    describe "#move" do
      it "returns rock" do
        srand(0)
        player = Player.new("CPU")
        expect(player.move).to eq :rock
      end

      it "returns paper" do
        srand(101)
        player = Player.new("CPU")
        expect(player.move).to eq :paper
      end

      it "returns scissors" do
        srand(3)
        player = Player.new("CPU")
        expect(player.move).to eq :scissors
      end
    end

  end
end
