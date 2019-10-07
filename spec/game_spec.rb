require 'game'

describe Game do

  it 'returns the name of the marketeer' do
    game = Game.new("Imogen")
    expect(game.marketeer).to eq 'Imogen'
  end


end
