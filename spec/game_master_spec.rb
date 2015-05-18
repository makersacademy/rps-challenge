require 'spec_helper'

describe GameMaster do
  let(:test_player1) { double :player1, name: 'Bob' }
  let(:test_player2) { double :player2, name: 'Goody' }
  let(:game) { described_class.new }

  context 'manages players' do
    it 'adds players' do
      expect { game.add test_player1 }.not_to raise_error
    end

    it 'keeps track of players' do
      game.add test_player1
      game.add test_player2
      expect(game.show_players).to eq 'Bob, Goody'
    end

    it 'removes players upon request' do
      game.add test_player1
      expect(game.remove test_player1).to be test_player1
      expect(game.show_players).to eq ''
    end
  end

  context 'runs game logic' do
    it 'decides the winner of the game' do
      game.add test_player1
      game.add test_player2
      allow(test_player1).to receive(:choice) { :paper }
      allow(test_player2).to receive(:choice) { :rock }
      expect(game.winner).to eq 'Bob'
    end
  end
end
