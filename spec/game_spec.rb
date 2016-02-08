require 'game'

describe Game do
  let(:player) {double :player, name: 'Pinky', choice: 'Scissors'}
  let(:winner_klass) {double :winner_klass, new: winner}
  let(:winner) {double :winner, outcome: false}
  subject(:game) {described_class.new(player,winner_klass)}
  context 'When the game initializes' do
    describe '#initialize' do
      it 'stores the player object' do
        expect(game.player_name).to eq 'Pinky'
      end
    end
  end

  context 'When the player chooses an option' do
    describe '#set_player_choice' do
      it 'passes the choice to the player object' do
        expect(player).to receive(:choice)
        game.set_player_choice('Lizard')
      end
    end

    describe '#game_choice' do
      it 'chooses the computer\'s option' do
        allow(Kernel).to receive(:rand) {0.5}
        expect(game.game_choice).to eq('Scissors')
      end
    end

    describe '#who_won' do
      it 'instantiates the winner object' do
        expect(winner_klass).to receive(:new)
        game.who_won(game.player_choice,game.game_choice)
      end

      it 'returns the outcome of the game' do
        expect(game.who_won(game.player_choice,game.game_choice)).to be(false)
      end
    end
  end
end
