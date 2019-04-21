require 'game'


describe Game do

  subject(:game) {Game.new}

  it 'takes player and computer moves and determines result' do
    allow(game).to receive(:player_move).and_return("Rock")
    allow(game).to receive(:computer_move).and_return("Paper")
    expect(game.result).to eq "Paper beats rock...you lose!"
  end
end
