require 'game'

describe Game do
  it 'should initialize with 2 players - player 1' do
    game = Game.new('Player 1', 'Computer')
    expect(game.player).to eq('Player 1')
  end
  it 'should initialize with 2 players - computer' do
    game = Game.new('Player 1', 'Computer')
    expect(game.computer).to eq('Computer')
  end
end
