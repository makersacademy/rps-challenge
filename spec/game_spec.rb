require 'game'

describe Game do
  subject(:game) { Game.new("Rock", "Scissors") }

  it 'should return Player wins' do
    expect(game.result).to eq "You win! :)"
  end

end
