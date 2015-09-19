require 'game'

describe 'Game' do

  it 'A player should be able to play a new game' do
    player = double(:fakeplayer)
    game = Game.new(player)
    expect(game).to respond_to(:play).with(1).argument
  end

  it 'can view the players in the players array' do
    player = double(:fakeplayer)
    game = Game.new(player)
    expect(game.players).to eq([[player]])
  end

end
