require './lib/game'

describe Game do

subject(:game) {described_class.new(player, computer)}
let(:computer) {double :computer}
let(:player) {double :player}

  it 'is able to take in two player objects on initialization' do
    allow(player).to receive(:name).and_return("name")
    expect(game.player.name).to eq("name")
  end

  it 'is able to declare a winner' do
    allow(player).to receive(:rock).and_return(0)
    allow(computer).to receive(:random).and_return(1)
    game.player_move(player.rock)
    game.computer_move
    expect(game.winner).to eq("You Lose!")
  end

end
