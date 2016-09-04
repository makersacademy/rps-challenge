require './lib/game'

describe Game do

subject(:game) {described_class.new(player1, player2)}
let(:player1) {double :player1}
let(:player2) {double :player2}

it 'is able to take in two player objects on initialization' do
  expect(game.player_1).to eq(player1)
  expect(game.player_2).to eq(player2)
end

it 'is able to declare a winner' do
  allow(player1).to receive(:rock).and_return(0)
  allow(player2).to receive(:paper).and_return(1)
  game.player_1_move(player1.rock)
  game.player_2_move(player2.paper)
  expect(game.winner).to eq("You Lose!")
end

end
