require './lib/game.rb'

describe 'Ending the game' do

  it 'the game is over when both opponents have made a choice' do

    g = Game.new Player, RPS
    g.player_1.choice = 'scissors'
    g.player_2.choice = 'rock'
    expect(g).to be_over

  end
end
