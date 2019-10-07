require 'game'


describe Game do

  subject(:game) {Game.new("Rock", "Paper")}

  it 'takes player and computer moves and determines result' do
    expect(game.result).to eq "Paper beats Rock...you lose!"
  end
end
