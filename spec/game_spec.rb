require 'Game'
describe 'Game' do
  subject(:game) { Game.new(player_1,computer) }
  let(:player_1) { double :player, move: "rock" }
  let(:computer) { double :computer, move: "scissors" }

  it 'returns player 1' do
    expect(game.player_1).to eq player_1
  end

  it 'calculates if player wins or computer wins' do

end
