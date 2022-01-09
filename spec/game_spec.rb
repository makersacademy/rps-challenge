require 'game'

describe Game do
  subject(:game) { Game.new }
  it 'the computer will have a random pick' do
    game.computer_pick
    expect(['Rock','Paper','Scissors']).to include(game.computer)
  end
end