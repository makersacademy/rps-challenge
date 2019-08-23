require 'game'

describe Game do
  it 'can create a new game' do
  game = Game.new
  expect(game).to be_kind_of(Game)
  end

  it 'can respond to method play' do
  game = Game.new
  expect(game).to respond_to(:play)
  end

  it 'can give a random output' do
  game = Game.new
  expect(['Rock','Paper','Scissors']).to include(game.play)
  end
end
