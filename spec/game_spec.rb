require 'game'

describe Game do
  subject(:game) { described_class.new(:player, :computer) }

  describe '#result' do
    context "return win" do
      it "player is rock and computer is scissors" do
        allow(game).to receive(:player_choice).and_return('rock')
        allow(game).to receive(:computer_choice).and_return('scissors')
        expect(game.result).to eq :win
      end
      it "player is scissors and computer is paper" do
        allow(game).to receive(:player_choice).and_return('scissors')
        allow(game).to receive(:computer_choice).and_return('paper')
        expect(game.result).to eq :win
      end
      it "player is paper and computer is rock" do
        allow(game).to receive(:player_choice).and_return('paper')
        allow(game).to receive(:computer_choice).and_return('rock')
        expect(game.result).to eq :win
      end
    end
    context "return lose" do
      it "player is scissors and computer is rock" do
        allow(game).to receive(:player_choice).and_return('scissors')
        allow(game).to receive(:computer_choice).and_return('rock')
        expect(game.result).to eq :lose
      end
      it "player is paper and computer is scissors" do
        allow(game).to receive(:player_choice).and_return('paper')
        allow(game).to receive(:computer_choice).and_return('scissors')
        expect(game.result).to eq :lose
      end
      it "player is rock and computer is paper" do
        allow(game).to receive(:player_choice).and_return('rock')
        allow(game).to receive(:computer_choice).and_return('paper')
        expect(subject.result).to eq :lose
      end
    end
    context "return draw" do
      it "player is scissors and computer is scissors" do
        allow(game).to receive(:player_choice).and_return('rock')
        allow(game).to receive(:computer_choice).and_return('rock')
        expect(game.result).to eq :draw
      end
      it "player is paper and computer is paper" do
        allow(game).to receive(:player_choice).and_return('scissors')
        allow(game).to receive(:computer_choice).and_return('scissors')
        expect(game.result).to eq :draw
      end
      it "player is rock and computer is rock" do
        allow(game).to receive(:player_choice).and_return('paper')
        allow(game).to receive(:computer_choice).and_return('paper')
        expect(game.result).to eq :draw
      end
    end
  end
end
