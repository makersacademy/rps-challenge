require 'game'

describe Game do
  subject(:game) {Game.new}
  it 'Can be an instance of game' do
    expect(game).to be_instance_of Game
  end
end
    