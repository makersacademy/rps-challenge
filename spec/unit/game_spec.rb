require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1, choice: :paper }
  let(:player2) { double :player2, choice: :paper }

  describe '#initialize' do
    it 'sets player 1 as an instance variable' do
      expect(game.player1).to eq player1
    end

    it 'sets player 2 as an instance variable' do
      expect(game.player2).to eq player2
    end
  end

  describe '#result' do
    it 'returns :draw if both players make the same move' do
      expect(game.result).to eq :draw
    end

    it 'returns :win if player one makes a winning move' do
      allow(player2).to receive(:choice).and_return(:rock)
      expect(game.result).to eq :win
    end

    it 'returns :lose if player one makes a losing move' do
      allow(player2).to receive(:choice).and_return(:scissors)
      expect(game.result).to eq :lose
    end
  end
end
