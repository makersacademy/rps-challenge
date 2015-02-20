require 'game.rb'

describe Game do
  let(:game){Game.new}

  context 'Adding players'

  it 'should be able to add a player ' do
    expect(game.add_player1("Sebastien")).to eq ["Sebastien"]
  end

end