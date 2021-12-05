require 'game'

describe Game do
  subject(:game) { Game.new('Rock', 'Paper') }

  describe '#play' do
    it 'returns the winner' do
      expect(game.play).to eq 'Computer wins'
    end
  end
end