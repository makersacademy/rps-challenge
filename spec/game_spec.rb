require 'game'

describe Game do

  let(:game){Game.new}
  let(:computer1){double :computer, name: "Computer", choice: "paper"}
  let(:computer2){double :computer, name: "Computer", choice: "rock"}
  let(:player){double :player, name: "Player", choice: "paper"}

  it 'can return a draw when player and computer make the same choice' do
    game.compare(player, computer1)
    expect(game.winner).to eq "DRAW"
  end

  it 'can compare players and computers choice to decide a winner' do
    game.compare(player, computer2)
    expect(game.winner).to eq player
  end

end