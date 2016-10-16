require 'game'

describe Game do
  let(:player_1) { double :player_1, :name => "Player 1", :move => nil }
  let(:player_2) { double :player_2, :name => "Player 2", :move => nil }
  subject(:game) { described_class.new(player_1, player_2)}

  describe "players" do
    it "has a Player 1" do
      expect(game.player_1).to eq player_1
    end
    it "has a Player 2" do
      expect(game.player_2).to eq player_2
    end
  end

  describe "moves" do
    it "asks Player 1 to make a selection" do
      game.play_round
      expect(player_1).to have_received(:move)
    end
    it "asks Player 2 to make a selection" do
      game.play_round
      expect(player_2).to have_received(:move)
    end
  end

  describe "rules and results" do
    context "both players make same move" do
      it "is a draw if both players select rock" do
        allow(player_1).to receive(:move).and_return :rock
        allow(player_2).to receive(:move).and_return :rock
        game.play_round
        expect(game.result).to be nil
      end
      it "is a draw if both players select scissors" do
        allow(player_1).to receive(:move).and_return :scissors
        allow(player_2).to receive(:move).and_return :scissors
        game.play_round
        expect(game.result).to be nil
      end
      it "is a draw if both players select paper" do
        allow(player_1).to receive(:move).and_return :paper
        allow(player_2).to receive(:move).and_return :paper
        game.play_round
        expect(game.result).to be nil
      end
    end

    context "rock beats scissors" do
      it "Player 1 wins when Player 1 chooses rock, Player 2 chooses scissors" do
        allow(player_1).to receive(:move).and_return :rock
        allow(player_2).to receive(:move).and_return :scissors
        game.play_round
        expect(game.result).to be_a Hash
        expect(game.result[:moves]).to eq [:rock, :scissors]
        expect(game.result[:winner]).to eq :player_1
      end
      it "Player 2 wins when Player 1 chooses scissors, Player 2 chooses rock" do
        allow(player_1).to receive(:move).and_return :scissors
        allow(player_2).to receive(:move).and_return :rock
        game.play_round
        expect(game.result).to be_a Hash
        expect(game.result[:moves]).to eq [:scissors, :rock]
        expect(game.result[:winner]).to eq :player_2
      end
    end

    context "paper beats rock" do
      it "Player 1 wins when Player 1 chooses paper, Player 2 chooses rock" do
        allow(player_1).to receive(:move).and_return :paper
        allow(player_2).to receive(:move).and_return :rock
        game.play_round
        expect(game.result).to be_a Hash
        expect(game.result[:moves]).to eq [:paper, :rock]
        expect(game.result[:winner]).to eq :player_1
      end
      it "Player 2 wins when Player 1 chooses rock, Player 2 chooses paper" do
        allow(player_1).to receive(:move).and_return :rock
        allow(player_2).to receive(:move).and_return :paper
        game.play_round
        expect(game.result).to be_a Hash
        expect(game.result[:moves]).to eq [:rock, :paper]
        expect(game.result[:winner]).to eq :player_2
      end
    end

    context "scissors beats paper" do
      it "Player 1 wins when Player 1 chooses scissors, Player 2 chooses paper" do
        allow(player_1).to receive(:move).and_return :scissors
        allow(player_2).to receive(:move).and_return :paper
        game.play_round
        expect(game.result).to be_a Hash
        expect(game.result[:moves]).to eq [:scissors, :paper]
        expect(game.result[:winner]).to eq :player_1
      end
      it "Player 2 wins when Player 1 chooses paper, Player 2 chooses scissors" do
        allow(player_1).to receive(:move).and_return :paper
        allow(player_2).to receive(:move).and_return :scissors
        game.play_round
        expect(game.result).to be_a Hash
        expect(game.result[:moves]).to eq [:paper, :scissors]
        expect(game.result[:winner]).to eq :player_2
      end
    end
  end
end
