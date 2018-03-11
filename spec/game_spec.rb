require 'game'

describe Game do

  it 'Store player name' do
    game = Game.new("Reena")
    expect(game.player).to eq "Reena"
  end
end
