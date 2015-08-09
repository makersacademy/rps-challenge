require "game"

describe Game do

  let(:player_1) { double(:player, hand_to_play: :rock) }
  let(:subject) { described_class.new( { player_1: player_1 } ) }
  let(:player_2) { double(:player, hand_to_play: :scissors) }
  let(:subject_2_player) { described_class.new( { player_1: player_1, player_2: player_2 } ) }

  describe "#play_hand_single_player" do

    it "player can win" do
      allow(subject).to receive(:computer_hand) { :scissors }
      expect(subject.play_hand_single_player(player_1)).to eq(:winner)
    end

    it "player can lose" do
      allow(subject).to receive(:computer_hand) { :paper }
      expect(subject.play_hand_single_player(player_1)).to eq(:loser)
    end

    it "returns draw if a draw" do
      allow(subject).to receive(:computer_hand) { :rock }
      expect(subject.play_hand_single_player(player_1)).to eq(:draw)
    end
  end

  describe "#play_hand_two_player"
    it "player 1 can win" do
    subject_2_player.play_hand_two_player
    expect(subject_2_player.winner).to eq(player_1)
  end

  describe "winner_exists?" do
    it "returns true if there is a winner" do
      subject_2_player.play_hand_two_player
      expect(subject_2_player.winner_exists?).to be true
    end
  end
end