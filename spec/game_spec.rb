require 'game'

describe Game do
  
  let(:game) { Game.new }

  describe '#make_choice' do
    it 'returns a choice' do
      game = Game.new(['rock'])
      expect(game.make_choice).to eq 'rock'
    end
  end
end