require 'winner'

describe Winner do
  let(:game) {double :game, player_weapon: 'Lizard', weapon: 'Scissors'}
  subject(:winner) {described_class.new(game.player_weapon,game.weapon)}
  context 'When Winner is initialized' do
    describe '#initialize' do
      it 'generates a hash of possible outcomes' do
        expect(winner.outcomes.keys).to include(game.player_weapon,game.weapon)
      end
    end
  end

  context 'When Winner receives the choices' do
    describe '#player_wins?' do
      it 'determines if the player loses' do
        expect(winner.outcome).to be(false)
      end

      it 'evaluates a tie' do
        allow(game).to receive(:weapon) {'Lizard'}
        expect(winner.outcome).to eq("A tie")
      end

      it 'determines if the player wins' do
        allow(game).to receive(:weapon) {'Spock'}
        expect(winner.outcome).to be(true)
      end
    end
  end
end
