require 'game'

describe Game do
  let(:player) {double :player}
  let(:computer) {double :computer}
  subject(:game) {described_class.new player, computer}

    describe '#player_one' do
      it 'returns player one' do
        expect(game.player_1).to eq player
      end
    end

    describe '#create' do
      it 'creates a new instance of game within the class' do
        Game.create player
        expect(Game.object).to be_a Game
      end
    end
end
