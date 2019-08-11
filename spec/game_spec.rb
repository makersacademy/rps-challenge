require 'game'

describe Game do

  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

  describe "Game instance" do

    subject { Game.new(player_1, player_2) }

    context "players" do
      describe "#player1" do
        it "gets the first player" do
          expect(subject.player1).to eq player_1
        end
      end

      describe "#player2" do
        it "gets the second player" do
          expect(subject.player2).to eq player_2
        end
      end
    end

    describe "#winner" do
      it "lets paper win over rock" do
        allow(player_1).to receive(:move) { :rock }
        allow(player_2).to receive(:move) { :paper }
        expect(subject.winner).to eq player_2
      end

      it "lets scissors win over paper" do
        allow(player_1).to receive(:move) { :scissors }
        allow(player_2).to receive(:move) { :paper }
        expect(subject.winner).to eq player_1
      end

      it "lets rock win over scissors" do
        allow(player_1).to receive(:move) { :rock }
        allow(player_2).to receive(:move) { :scissors }
        expect(subject.winner).to eq player_1
      end

      it "returns 'draw' for a draw" do
        allow(player_1).to receive(:move) { :rock }
        allow(player_2).to receive(:move) { :rock }
        expect(subject.winner).to eq "Draw!"
      end
    end
  end
end
