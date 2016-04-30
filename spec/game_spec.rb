require 'game'

describe Game do
  let(:game) { described_class.new(player_1, computer) }
  let(:player_1) { double(:player) }
  let(:computer) { double(:computer) }

  context 'Creating and storing games' do
    describe '#start' do
      it 'Creates a new game' do
        new_game = Game.start(player_1, computer, player_1)
        expect(new_game.player_1).to eq player_1
      end
    end

    describe '#instance' do
      it 'Stores a game' do
        new_game = Game.start(player_1)
        expect(Game.instance).to eq new_game
      end
    end
  end

  context 'Players' do
    describe '#player1' do
      it 'Contains the first player' do
        expect(game.player_1).to eq player_1
      end
    end

    describe '#player2' do
      it 'Contains the computer player' do
        expect(game.player_2).to be computer
      end
    end
  end


end
