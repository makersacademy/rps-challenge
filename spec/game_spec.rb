require 'game'

describe Game do
  let(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2, random_option: nil }

  describe "initialize" do
    it "should assign a player to player_1" do
      expect(game.player_1).to eq player_1
    end

    it "should assign a player to player_2" do
      expect(game.player_2).to eq player_2
    end
  end

  describe "#result" do
    it "should return a tie if both options are the same" do
      expect(game.result('paper', 'paper')).to eq "tie"
    end

    context "player 1 chooses paper" do
      it "player 1 should win if player 2 chooses rock" do
        expect(game.result('paper', 'rock')).to eq player_1
      end

      it "player 2 should win if player 2 chooses scissors" do
        expect(game.result('paper', 'scissors')).to eq player_2
      end
    end

    context "player 1 chooses rock" do
      it "player 1 should win if player 2 chooses scissors" do
        expect(game.result('rock', 'scissors')).to eq player_1
      end

      it "player 2 should win if player 2 chooses paper" do
        expect(game.result('rock', 'paper')).to eq player_2
      end
    end

    context "player 1 chooses scissors" do
      it "player 1 should win if player 2 chooses paper" do
        expect(game.result('scissors', 'paper')).to eq player_1
      end

      it "player 2 should win if player 2 chooses rock" do
        expect(game.result('scissors', 'rock')).to eq player_2
      end
    end
  end

  describe "#computer_option" do
    it "should call random_option on the player_2" do
      expect(game.player_2).to receive(:random_option)
      game.computer_option
    end
  end
end
