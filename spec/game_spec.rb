require 'game'


describe Game do 
let(:player) {double :player}
let(:playerClass) {double :Player, new: player}

def game; Game.new(playerClass); end

    it 'creates player 1' do
    expect(game.player1).to be player
    end

    it 'creates player 1' do
      expect(game.player2).to be player
    end


    it 'can determine the winner of a game' do
      game
      allow(game.player1).to receive(:choice) {:rock}
      allow(game.player2).to receive(:choice) {:rock}
      expect(game.result).to eq 'Player 1 - rock, Player 2 - rock. Its a draw. Keep going!'
    end

end