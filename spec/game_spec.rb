require 'game'

describe Game do

  subject(:game) { Game.new('Player', 'COMPUTER')}

  describe '#player' do
    it 'retrieves player' do
      expect(game.player).to eq 'Player'
    end
  end

  describe '#computer' do
    it 'retrieves player' do
      expect(game.computer).to eq 'COMPUTER'
    end
  end

  describe '#result' do

    player_win_game = ['ROCK', 'SCISSORS']
    computer_win_game = ['PAPER', 'SCISSORS']
    tie = ['ROCK', 'ROCK']

    describe 'returns a result' do
      it "'ROCK' & 'SCISSORS'" do
        expect(game.result(player_win_game)).to eq 'Player wins'
      end

      it "'PAPER' & 'SCISSORS'" do
        expect(game.result(computer_win_game)).to eq 'Computer wins'
      end

      it "'ROCK' & 'ROCK'" do
        expect(game.result(tie)).to eq 'Tie'
      end

    end
  end
end
