require 'game'

describe Game do

  subject(:game) { Game.new(player_class, computer_class) }
  let(:player_class) { double :player_class, new: player }
  let(:player) { double :player, turn: "paper" }
  let(:computer_class) { double :computer_class, new: computer }
  let(:computer) { double :computer, turn: :rock }

  describe "#computer_turn" do
    it "returns the computer's turn" do
      subject.result
      expect(subject.computer_turn).to eq :rock
    end
  end

  describe "#result" do

    context "player chooses paper" do

      context "computer chooses rock" do
        it "returns that the player wins" do
          expect(subject.result).to eq :win
        end
      end

      context "computer chooses scissors" do
        it "returns that the player lost" do
          allow(computer).to receive(:turn) { :scissors }
          expect(subject.result).to eq :lose
        end
      end

      context "computer chooses paper also" do
        it "returns that it's a draw" do
          allow(computer).to receive(:turn) { :paper }
          expect(subject.result).to eq :draw
        end
      end
    end

    context "player chooses rock" do

      before do
        allow(player).to receive(:turn) { "rock" }
      end

      context "computer chooses rock also" do
        it "returns that it's a draw" do
          expect(subject.result).to eq :draw
        end
      end

      context "computer chooses scissors" do
        it "returns that the player won" do
          allow(computer).to receive(:turn) { :scissors }
          expect(subject.result).to eq :win
        end
      end

      context "computer chooses paper" do
        it "returns that the player lost" do
          allow(computer).to receive(:turn) { :paper }
          expect(subject.result).to eq :lose
        end
      end
    end

    context "player chooses scissors" do

      before do
        allow(player).to receive(:turn) { "scissors" }
      end

      context "computer chooses rock" do
        it "returns that the player lost" do
          expect(subject.result).to eq :lose
        end
      end

      context "computer chooses scissors also" do
        it "returns that it's a draw" do
          allow(computer).to receive(:turn) { :scissors }
          expect(subject.result).to eq :draw
        end
      end

      context "computer chooses paper" do
        it "returns that the player won" do
          allow(computer).to receive(:turn) { :paper }
          expect(subject.result).to eq :win
        end
      end
    end
  end
end
