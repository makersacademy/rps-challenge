require 'game'

describe Game do

  let(:game) { described_class.new('Freddie') }

  describe '#player_name' do
    it 'returns the name of the player' do
      expect(game.player_name).to eq 'Freddie'
    end
  end

  describe '#human_move' do
  end

  describe '#computer_move' do
  end

  describe '#selection' do
    it 'can be called' do
      game.selection('rock')
      expect(game.human_move).to eq 'rock'
    end
  end
  describe '#calculate' do
    it 'returns a result' do
      game.selection('rock')
      expect(game.calculate('scissors')).to eq 'You win!'
    end
  end
end