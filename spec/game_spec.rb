require 'game'

describe Game do
  let(:player1) { double :player, name: Mario }
  let(:player2) { double :player, name: Luigi }

  subject(:game) { Game.new(player1, player2) }

  describe '#player' do
    it 'retrieves the player' do
      expect(game.player1).to eq player1
    end
    it 'retrieves the player' do
      expect(game.player2).to eq player2
    end
  end

  describe '#winner' do
    it 'decides the winner' do
      allow(player1).to receive(:selected_option).and_return('rock')
      allow(player2).to receive(:selected_option).and_return('paper')
      expect(game.winner).to eq 'Mario lost!'
    end
  end
end
