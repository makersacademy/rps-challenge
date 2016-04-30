require 'game'

describe Game do
  let(:player) {double :player}
  subject(:game) {described_class.new player}

    describe '#player_one' do
      it 'returns player one' do
        expect(game.player_one).to eq player
      end
    end

    describe '#create' do
      it 'creates a new instance of game within the class' do
        Game.create player
        expect(Game.object).to be_a Game
      end
    end

    describe '#choice' do
      it 'returns what move was played' do
        game.choose_move 'Scissors'
        expect(game.choice).to eq 'Scissors'
      end
    end
end
