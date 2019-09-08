require './lib/game.rb'

describe Game do
  before(:each) do
    player = Player.new('Dave')
    player.rps_choice = 'Rock'
    srand(1)
    @game = Game.new(player)
  end
  it 'generates a computer rps choice' do
    expect(@game.computer_choice).to eq('Paper')
  end
  it 'calculates the winner' do
    expect(@game.winner).to eq 'Computer'
  end
  it 'updates player choice' do
    @game.update_player_choice('Scissors')
    expect(@game.player_choice).to eq('Scissors')
  end
end
