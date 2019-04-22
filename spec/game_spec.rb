require 'game'

describe Game do
  subject(:game) { Game.new(player) }
  let(:player) { double(:player) }

   it 'gives player' do
     expect(game.player).to eq player
   end
end
