require './lib/game.rb'

describe Game do
  it 'generates a computer rps choice' do
    player = Player.new('Dave')
    player.rps_choice = 'Rock'
    srand(1)
    game = Game.new(player)
    expect(game.computer_choice).to eq("Scissors")
  end
  it 'calculates the winner' do
    player = Player.new('Dave')
    player.rps_choice = 'Rock'
    srand(1)
    game = Game.new(player)
    expect(game.winner).to eq 'Dave'

    srand(2)
    game = Game.new(player)
    expect(game.winner).to eq 'Computer'
  end
end
