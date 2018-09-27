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
      allow(player_1).to receive(:chosen_option).and_return('paper')
      allow(player_2).to receive(:chosen_option).and_return('paper')
      expect(game.result).to eq "tie"
    end

    context "player 1 chooses paper" do
      before do
        allow(player_1).to receive(:chosen_option).and_return('paper')
      end
      it "player 1 should win if player 2 chooses rock" do
        allow(player_2).to receive(:chosen_option).and_return('rock')
        expect(game.result).to eq player_1
      end

      it "player 2 should win if player 2 chooses scissors" do
        allow(player_2).to receive(:chosen_option).and_return('scissors')
        expect(game.result).to eq player_2
      end
    end

    context "player 1 chooses rock" do
      before do
        allow(player_1).to receive(:chosen_option).and_return('rock')
      end
      it "player 1 should win if player 2 chooses scissors" do
        allow(player_2).to receive(:chosen_option).and_return('scissors')
        expect(game.result).to eq player_1
      end

      it "player 2 should win if player 2 chooses paper" do
        allow(player_2).to receive(:chosen_option).and_return('paper')
        expect(game.result).to eq player_2
      end
    end

    context "player 1 chooses scissors" do
      before do
        allow(player_1).to receive(:chosen_option).and_return('scissors')
      end
      it "player 1 should win if player 2 chooses paper" do
        allow(player_2).to receive(:chosen_option).and_return('paper')
        expect(game.result).to eq player_1
      end

      it "player 2 should win if player 2 chooses rock" do
        allow(player_2).to receive(:chosen_option).and_return('rock')
        expect(game.result).to eq player_2
      end
    end
  end

  describe "#computer_option" do
    it "should call random_option on the player_2" do
      expect(game.player_2).to receive(:random_option)
      game.computer_option
    end
  end

  describe "#player_1_option" do
    it "should return player 1's chosen option" do
      expect(game.player_1).to receive(:chosen_option)
      game.player_1_option
    end
  end

  describe "#player_2_option" do
    it "should return player 2's chosen option" do
      expect(game.player_2).to receive(:chosen_option)
      game.player_2_option
    end
  end

  describe "#choose_player_1_option" do
    it "should assign an chosen option to player 1" do
      expect(game.player_1).to receive(:choose_option).with(anything)
      game.choose_player_1_option("paper")
    end
  end

  describe "#choose_player_2_option" do
    it "should assign an chosen option to player 2" do
      expect(game.player_2).to receive(:choose_option).with(anything)
      game.choose_player_2_option("paper")
    end
  end
end
