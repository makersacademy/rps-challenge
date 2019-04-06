require 'game'

describe Game do
  describe '#result' do
    describe 'Player wins when' do
      it 'player selects paper vs rock' do
        game = Game.new("Paper", "Rock")
        expect(game.check_result).to eq "You are Victorious!"
      end
      it 'player selects paper vs rock' do
        game = Game.new("Scissors", "Paper")
        expect(game.check_result).to eq "You are Victorious!"
      end
      it 'player selects paper vs rock' do
        game = Game.new("Rock", "Scissors")
        expect(game.check_result).to eq "You are Victorious!"
      end
    describe 'Player loses when' do
      it 'player selects paper vs scissors' do
        game = Game.new("Paper", "Scissors")
        expect(game.check_result).to eq "The Dark Web o.0 has defeated you!"
      end
    end
    end
  end
end
