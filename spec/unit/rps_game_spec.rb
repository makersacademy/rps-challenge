require './app/models/rps_game.rb'
describe RpsGame do
  let(:game) { described_class.new }

  describe "#result" do
    context "if player is rock and opponent is scissors" do
      it "returns win" do
        allow(game).to receive(:random_hand).and_return('scissors')
        expect(game.result('rock')).to eq('win')
      end
    end

    context "if player is scissors and opponent is paper" do
      it "returns win" do
        allow(game).to receive(:random_hand).and_return('paper')
        expect(game.result('scissors')).to eq('win')
      end
    end

    context "if player is paper and opponent is rock" do
      it "returns win" do
        allow(game).to receive(:random_hand).and_return('rock')
        expect(game.result('paper')).to eq('win')
      end
    end

    context "if player is rock and opponent is rock" do
      it "returns draw" do
        allow(game).to receive(:random_hand).and_return('rock')
        expect(game.result('rock')).to eq('draw')
      end
    end

    context "if player is paper and opponent is paper" do
      it "returns draw" do
        allow(game).to receive(:random_hand).and_return('paper')
        expect(game.result('paper')).to eq('draw')
      end
    end

    context "if player is scissors and opponent is scissors" do
      it "returns draw" do
        allow(game).to receive(:random_hand).and_return('scissors')
        expect(game.result('scissors')).to eq('draw')
      end
    end

    context "if player is rock and opponent is paper" do
      it "returns lose" do
        allow(game).to receive(:random_hand).and_return('paper')
        expect(game.result('rock')).to eq('lose')
      end
    end

    context "if player is paper and opponent is scissors" do
      it "returns lose" do
        allow(game).to receive(:random_hand).and_return('scissors')
        expect(game.result('paper')).to eq('lose')
      end
    end

    context "if player is scissors and opponent is rock" do
      it "returns lose" do
        allow(game).to receive(:random_hand).and_return('rock')
        expect(game.result('scissors')).to eq('lose')
      end
    end
  end
end
