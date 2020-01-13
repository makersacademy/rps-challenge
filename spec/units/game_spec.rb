require 'game'

describe Game do
  it 'can play rps game' do
    game = Game.new("Rock")
    allow(game.moves).to receive(:sample).and_return("Paper")
    expect(game.play).to include "You have lost!"
  end

end
