require 'game.rb'

describe Game do

  describe '#beats_computer?' do
    context 'When 1st move is Rock' do
      it 'knows when the player has lost' do
        game = Game.new
        expect(game.beats_computer?('Rock','Paper')).to eq :lose
      end
      it 'knows when the player has won' do
        game = Game.new
        expect(game.beats_computer?('Rock','Scissors')).to eq :win
      end
      it 'knows when the player has drawn' do
        game = Game.new
        expect(game.beats_computer?('Rock','Rock')).to eq :draw
      end
    end
  end
    context 'When 1st move is Paper' do
      it 'knows when the player has lost' do
        game = Game.new
        expect(game.beats_computer?('Paper','Scissors')).to eq :lose
      end
      it 'knows when the player has won' do
        game = Game.new
        expect(game.beats_computer?('Paper','Rock')).to eq :win
      end
      it 'knows when the player has drawn' do
        game = Game.new
        expect(game.beats_computer?('Paper','Paper')).to eq :draw
      end
    end
    context 'When 1st move is Scissors' do
      it 'knows when the player has lost' do
        game = Game.new
        expect(game.beats_computer?('Scissors','Rock')).to eq :lose
      end
      it 'knows when the player has won' do
        game = Game.new
        expect(game.beats_computer?('Scissors','Paper')).to eq :win
      end
      it 'knows when the player has drawn' do
        game = Game.new
        expect(game.beats_computer?('Scissors','Scissors')).to eq :draw
      end
    end
end
