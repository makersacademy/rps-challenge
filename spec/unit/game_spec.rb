require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player, name: 'Gon') }
  let(:player_2) { double(:player, name: 'CPU') }

  describe '#player_1' do
    it 'retrieves player 1' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves player 2' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#decide_winner' do
    context 'player 1 chooses Rock'
      it 'chooses player 1 as the winner' do
        expect(game.decide_winner(['Rock', 'Scissors'])).to eq 'Gon'
      end

      it 'chooses player 2 as the winner' do
        expect(game.decide_winner(['Rock', 'Paper'])).to eq 'CPU'
      end

      it 'declares a draw' do
        expect(game.decide_winner(['Rock', 'Rock'])).to eq 'Draw'
      end
  end
end
