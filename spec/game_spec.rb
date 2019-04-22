require 'game'

describe Game do
  subject(:game) { Game.new(player, console) }
  let(:player) { double(:player) }
  let(:console) { double(:console) }

   it 'gives player' do
     expect(game.player).to eq player
   end
end
