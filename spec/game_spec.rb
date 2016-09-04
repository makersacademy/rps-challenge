require './lib/game'

describe Game do

subject(:game) {described_class.new(player1, player2)}
let(:player1) {double :player1}
let(:player2) {double :player2}

it 'is able to take in two player objects on initialization' do
  expect(game.player_1).to eq(player1)
  expect(game.player_2).to eq(player2)
end




end
