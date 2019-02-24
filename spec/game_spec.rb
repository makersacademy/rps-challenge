require 'game'
describe Game do

  let(:game) { described_class.new("ROCK") }

  describe 'return result of game' do
    it 'returns winner' do
      allow(game).to receive(:rps) { "YOU WON!" }
      expect(game.result).to include "YOU WON!"
    end
  end
end
