require_relative '../lib/game'

describe Game do
  subject(:game) { Game.new('Mika', '')}
  subject(:vs_game) { Game.new('Mika', 'Amp')}

  context 'creation' do
    it "1 player game has a player 1 array with a name, and a player 2 array named 'the computer'" do
      expect(game.player_1[0]).to eq 'Mika'
      expect(game.player_2[0]).to eq 'The Computer'
    end
    it '2 player game has player 1 and player 2 arrays including names' do
      expect(vs_game.player_1[0]).to eq 'Mika'
      expect(vs_game.player_2[0]).to eq 'Amp'
    end
  end

  context 'move' do
    it 'is still made if no choice is entered' do
      game.move(game.player_2)
      expect(game.player_2.length).to eq 2
    end
    it 'is saved to the player array' do
      game.move(game.player_1, 'Rock')
      expect(game.player_1[1]). to eq 'Rock'
    end
  end

  context 'result' do
    it 'is decided accurately' do
      vs_game.move(vs_game.player_1, 'Scissors')
      vs_game.move(vs_game.player_2, 'Paper')
      expect(vs_game.winner).to eq 'MIKA!'
    end
  end
end