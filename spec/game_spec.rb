require 'game'
describe Game do
  describe '#result' do
    it 'is expected to return the result' do
    game = Game.new
    allow(game).to receive(:win)
    expect(game.result).to eq('You won.')
    end
  end
end
