require 'game'
require 'computer'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:computer) { spy(:computer) }
  let(:player) { spy(:player) }

  describe '#outcome' do

    describe 'player chooses rock' do
      before(:each) do
        allow(player).to receive(:choice).and_return :Rock
      end
      it 'rock vs. scissors, player wins' do
        allow(computer).to receive(:choice).and_return :Scissors
        expect(game.outcome).to eq(:win)
      end

      it 'rock vs. paper, player loses' do
        allow(computer).to receive(:choice).and_return :Paper
        expect(game.outcome).to eq(:lose)
      end

      it 'rock vs. rock, draw' do
        allow(computer).to receive(:choice).and_return :Rock
        expect(game.outcome).to eq(:draw)
      end
    end

    describe 'player chooses scissors' do
      before(:each) do
        allow(player).to receive(:choice).and_return :Scissors
      end
      it 'scissors vs. paper, player wins' do
        allow(computer).to receive(:choice).and_return :Paper
        expect(game.outcome).to eq(:win)
      end

      it 'scissors vs. rock, player loses' do
        allow(computer).to receive(:choice).and_return :Rock
        expect(game.outcome).to eq(:lose)
      end

      it 'scissors vs. scissors, draw' do
        allow(computer).to receive(:choice).and_return :Scissors
        expect(game.outcome).to eq(:draw)
      end
    end

    describe 'player chooses paper' do
      before(:each) do
        allow(player).to receive(:choice).and_return :Paper
      end
      it 'paper vs. rock, player wins' do
        allow(computer).to receive(:choice).and_return :Rock
        expect(game.outcome).to eq(:win)
      end

      it 'paper vs. scissors, player loses' do
        allow(computer).to receive(:choice).and_return :Scissors
        expect(game.outcome).to eq(:lose)
      end

      it 'paper vs. paper, draw' do
        allow(computer).to receive(:choice).and_return :Paper
        expect(game.outcome).to eq(:draw)
      end
    end

  end

end