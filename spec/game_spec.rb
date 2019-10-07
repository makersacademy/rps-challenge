require 'game'

describe Game do
  subject(:game) {Game.new}

  it 'confirms winner and loser' do
    allow(game).to receive(:player_move).and_return("Rock")
    allow(game).to receive(:opponent_move).and_return("Paper")
    expect(game.winner).to eq "You win!"
  end
end
