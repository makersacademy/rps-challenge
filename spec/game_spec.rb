require './lib/game.rb'

describe Game do
  let(:game) { Game.new(player) }
  let(:player) { double(:player) }

  context '#player' do
    it 'gets the player' do
      expect(game.player).to eq(player)
    end
  end
end
