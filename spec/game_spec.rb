require 'game'

describe Game do
  let(:player1) { double :player, name: 'Mario' }
  let(:player2) { double :player, name: 'Luigi' }

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
    context 'decides the winner' do
      it 'paper wins over rock' do
        allow(player1).to receive(:selected_option).and_return('rock')
        allow(player2).to receive(:selected_option).and_return('paper')
        expect(game.winner).to eq 'Luigi wins!'
      end
      it 'scisorrs wins over paper' do
        allow(player1).to receive(:selected_option).and_return('paper')
        allow(player2).to receive(:selected_option).and_return('scissors')
        expect(game.winner).to eq 'Luigi wins!'
      end
      it 'rock wins over scisorrs' do
        allow(player1).to receive(:selected_option).and_return('scisorrs')
        allow(player2).to receive(:selected_option).and_return('rock')
        expect(game.winner).to eq 'Luigi wins!'
      end
      it 'paper looses in front of scisorrs' do
        allow(player1).to receive(:selected_option).and_return('scissors')
        allow(player2).to receive(:selected_option).and_return('paper')
        expect(game.winner).to eq 'Mario wins!'
      end
      it 'rock looses in front of paper' do
        allow(player1).to receive(:selected_option).and_return('paper')
        allow(player2).to receive(:selected_option).and_return('rock')
        expect(game.winner).to eq 'Mario wins!'
      end
      it 'scisorrs looses in front of rock' do
        allow(player1).to receive(:selected_option).and_return('rock')
        allow(player2).to receive(:selected_option).and_return('scissors')
        expect(game.winner).to eq 'Mario wins!'
      end
    end
  end

end
