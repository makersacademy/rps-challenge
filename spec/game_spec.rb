require "game"

describe Game do
  let(:mock_player) { double :Player }
  let(:mock_computer) { double :Computer }
  let(:game) { Game.new(player: mock_player, computer: mock_computer) }

  context "#initialize" do
    it "#player" do
      expect(game.player).to be mock_player
    end

    it "#computer" do
      expect(game.computer).to be mock_computer
    end
  end

  context "#winner" do
    describe "player wins:" do
      it "player rock, computer scissors" do
        allow(mock_player).to receive(:shape).and_return("rock")
        allow(mock_computer). to receive(:shape).and_return("scissors")
        expect(game.winner).to be mock_player
      end

      it "player paper, computer rock" do
        allow(mock_player).to receive(:shape).and_return("paper")
        allow(mock_computer). to receive(:shape).and_return("rock")
        expect(game.winner).to be mock_player
      end

      it "player scissors, computer paper" do
        allow(mock_player).to receive(:shape).and_return("scissors")
        allow(mock_computer). to receive(:shape).and_return("paper")
        expect(game.winner).to be mock_player
      end
    end

    describe "computer wins:" do
      it "computer rock, player scissors" do
        allow(mock_player).to receive(:shape).and_return("scissors")
        allow(mock_computer). to receive(:shape).and_return("rock")
        expect(game.winner).to be mock_computer
      end

      it "computer paper, player rock" do
        allow(mock_player).to receive(:shape).and_return("rock")
        allow(mock_computer). to receive(:shape).and_return("paper")
        expect(game.winner).to be mock_computer
      end

      it "computer scissors, player paper" do
        allow(mock_player).to receive(:shape).and_return("paper")
        allow(mock_computer). to receive(:shape).and_return("scissors")
        expect(game.winner).to be mock_computer
      end
    end

    describe "tie:" do
      it "computer and player both rock" do
        allow(mock_player).to receive(:shape).and_return("rock")
        allow(mock_computer). to receive(:shape).and_return("rock")
        expect(game.winner).to eq "tie"
      end

      it "computer and player both paper" do
        allow(mock_player).to receive(:shape).and_return("paper")
        allow(mock_computer). to receive(:shape).and_return("paper")
        expect(game.winner).to eq "tie"
      end

      it "computer and player both scissors" do
        allow(mock_player).to receive(:shape).and_return("scissors")
        allow(mock_computer). to receive(:shape).and_return("scissors")
        expect(game.winner).to eq "tie"
      end
    end
  end
end
