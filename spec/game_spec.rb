require 'game'


describe Game do 
let(:player) {double :player}
let(:playerClass) {double :Player, new: player}

def game; Game.new(playerClass); end

  context 'Player creation' do

    it 'creates player 1' do
    expect(game.player1).to be player
  end

  it 'creates player 1' do
    expect(game.player2).to be player
  end

end

  context 'Determining Result' do
    # let (:player1) { double :player, choose: :rock }
    # let (:player2) { double :player, choose: :scissors }

  it 'can determine the winner of a game' do
    game
    allow(game.player1).to receive(:choose) {:rock}
    allow(game.player2).to receive(:choose) {:scissors}
    expect(game.result).to eq 'Player 1 wins!'
  end

  end

end