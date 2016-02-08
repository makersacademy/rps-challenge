require 'winner'

describe Winner do
  let(:game) {double :game, player_choice: 'Lizard', game_choice: 'Scissors'}
  subject(:winner) {described_class.new(game.player_choice,game.game_choice)}
  context 'When Winner is initialized' do
    describe '#initialize' do
      it 'generates a hash of possible outcomes' do
        expect(winner.outcomes.keys).to include(game.player_choice,game.game_choice)
      end
    end
  end

  context 'When Winner receives the choices' do
    describe '#player_wins?' do
      it 'determines the winner' do
        expect(winner.outcome).to be(false)
      end
    end
  end
end
