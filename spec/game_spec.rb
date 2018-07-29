require 'game'

describe Game do
  subject(:game) { described_class.new(player1, computer) }
  subject(:player1) { double :player }
  subject(:computer) { double :player }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq computer
    end
  end

  describe '#draw' do
    it 'returns a draw' do
      allow(player1).to receive(:choice).and_return 'rock'
      allow(computer).to receive(:choice).and_return 'rock'
      expect(game.draw?).to eq true
    end
  end

  describe '#winner' do
    context 'if not a draw, returns the winning player' do
      it 'rock vs paper' do
        allow(player1).to receive(:choice).and_return 'rock'
        allow(computer).to receive(:choice).and_return 'paper'
        expect(game.winner).to eq computer
      end
      it 'scissors vs paper' do
        allow(player1).to receive(:choice).and_return 'scissors'
        allow(computer).to receive(:choice).and_return 'paper'
        expect(game.winner).to eq player1
      end
      it 'scissors vs rock' do
        allow(player1).to receive(:choice).and_return 'scissors'
        allow(computer).to receive(:choice).and_return 'rock'
        expect(game.winner).to eq computer
      end
    end
  end
end
