require 'game'

describe Game do

  let(:game) { described_class.new('Freddie') }

  describe '#player_name' do
    it 'returns the name of the player' do
      expect(game.player_name).to eq 'Freddie'
    end
  end

  describe '#selection' do
    it 'can be called' do
      game.selection('rock')
      expect(game.last_move).to eq 'rock'
    end
  end

end