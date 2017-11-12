require "round"

describe Round do

  let(:player1) { double(:player, name: "Antonio", choice: :rock, add_choice: "rock") }
  let(:player2) { double(:player, name: "Nick", add_choice: "rock") }
  subject(:round) { described_class.new(player1, player2) }

  describe "#intiialize" do
    it "ensures a round is initialized with a player1" do
      expect(round.player1).to eq(player1)
    end
    it "ensures a round is initialized with a player2" do
      expect(round.player2).to eq(player2)
    end
  end

  describe "#result" do

    it "calls method check choices" do
      allow(player2).to receive(:choice).and_return(:rock)
      expect(subject).to receive(:check_choices)
      subject.result
    end
    it "calls method check result" do
      allow(player2).to receive(:choice).and_return(:rock)
      expect(subject).to receive(:check_result)
      subject.result
    end
    it "ensures add_choices gets called on a player if player.choice is nil" do
      allow(player2).to receive(:choice).and_return(:nil)
      allow(subject). to receive(:no_choice_p2).and_return(true)
      expect(player2).to receive(:add_choice).with(anything)
      subject.result
    end
    it "returns tie if there is a tie " do
      allow(player2).to receive(:choice).and_return(:rock)
      expect(subject.result).to eq("tie")
    end
    it "returns p1 wins if p1 wins" do
      allow(player2).to receive(:choice).and_return(:scissors)
      expect(subject.result).to eq("p1 wins")
    end
    it "returns p1 loses if p1 loses" do
      allow(player2).to receive(:choice).and_return(:paper)
      expect(subject.result).to eq("p1 loses")
    end

  end

end
