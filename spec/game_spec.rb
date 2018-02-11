require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:computer) { double 'A computer', rand_choice: 'Rock' }
  let(:player) { double 'A player' }

  describe '#choose_winner' do
    it 'chooses a winner depending on choices made' do
      expect(game.choose_winner('Paper', computer.rand_choice)).to eq 'player'
    end
  end

  describe '#player' do
    it 'takes a player class' do
      expect(game.player).to eq player
    end
  end

  describe '#computer' do
    it 'takes a computer class' do
      expect(game.computer).to eq computer
    end
  end
end
