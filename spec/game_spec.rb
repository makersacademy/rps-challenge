require "game"

describe Game do

  let(:player_1) { double(:player, hand_to_play: :rock) }
  let(:subject) { described_class.new( { player_1: :player_1 } ) }

  it "has players" do
    expect(subject).to respond_to (:players)
  end

  describe "#player_1" do
    it "is set up with player_1 on intitialize" do
      expect(subject.players). to include(:player_1)
    end
  end

  describe "#play_hand" do

    it "player can win" do
      allow(subject).to receive(:computer_play_hand) { :scissors }
      expect(subject.play_hand(player_1)).to eq(:winner)
    end

    it "player can lose" do
      allow(subject).to receive(:computer_play_hand) { :paper }
      expect(subject.play_hand(player_1)).to eq(:loser)
    end

    it "returns draw if a draw" do
      allow(subject).to receive(:computer_play_hand) { :rock }
      expect(subject.play_hand(player_1)).to eq(:draw)
    end
  end
end