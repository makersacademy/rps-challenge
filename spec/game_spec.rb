require 'game'

describe Game do
  let(:player_one){ double :first_player }
  let(:player_two){ double :second_player }
  subject(:game){ described_class.new(player_one, player_two) }

  describe '#checks_winner' do
    context 'when the results are:' do
      it 'Scissors beats Paper' do
        allow(player_one).to receive(:chosen_outcome).and_return('SCISSORS')
        allow(player_two).to receive(:chosen_outcome).and_return('PAPER')
        expect(game.checks_winner).to eq(player_one)
      end

      it 'Scissors beats Lizzard' do
        allow(player_one).to receive(:chosen_outcome).and_return('ROCK')
        allow(player_two).to receive(:chosen_outcome).and_return('LIZZARD')
        expect(game.checks_winner).to eq(player_one)
      end

      it 'Paper beats Rock' do
        allow(player_one).to receive(:chosen_outcome).and_return('PAPER')
        allow(player_two).to receive(:chosen_outcome).and_return('ROCK')
        expect(game.checks_winner).to eq(player_one)
      end

      it 'Paper beats Spock' do
        allow(player_one).to receive(:chosen_outcome).and_return('PAPER')
        allow(player_two).to receive(:chosen_outcome).and_return('SPOCK')
        expect(game.checks_winner).to eq(player_one)
      end

      it 'Rock beats Scissors' do
        allow(player_one).to receive(:chosen_outcome).and_return('ROCK')
        allow(player_two).to receive(:chosen_outcome).and_return('SCISSORS')
        expect(game.checks_winner).to eq(player_one)
      end

      it 'Rock beats Lizzard' do
        allow(player_one).to receive(:chosen_outcome).and_return('ROCK')
        allow(player_two).to receive(:chosen_outcome).and_return('LIZZARD')
        expect(game.checks_winner).to eq(player_one)
      end

      it 'Lizzard beats Paper' do
        allow(player_one).to receive(:chosen_outcome).and_return('LIZZARD')
        allow(player_two).to receive(:chosen_outcome).and_return('PAPER')
        expect(game.checks_winner).to eq(player_one)
      end

      it 'Lizzard beats Spock' do
        allow(player_one).to receive(:chosen_outcome).and_return('LIZZARD')
        allow(player_two).to receive(:chosen_outcome).and_return('SPOCK')
        expect(game.checks_winner).to eq(player_one)
      end

      it 'Spock beats Scissors' do
        allow(player_one).to receive(:chosen_outcome).and_return('SPOCK')
        allow(player_two).to receive(:chosen_outcome).and_return('SCISSORS')
        expect(game.checks_winner).to eq(player_one)
      end

      it 'Spock beats Rock' do
        allow(player_one).to receive(:chosen_outcome).and_return('SPOCK')
        allow(player_two).to receive(:chosen_outcome).and_return('ROCK')
        expect(game.checks_winner).to eq(player_one)
      end

      it 'No winners' do
        allow(player_one).to receive(:chosen_outcome).and_return('ROCK')
        allow(player_two).to receive(:chosen_outcome).and_return('ROCK')
        expect(game.checks_winner).to eq(nil)
      end
    end
  end

  describe '#reduce_hp_from_looser' do
    it 'deducts points from opponent' do
      allow(player_one).to receive(:chosen_outcome).and_return('SCISSORS')
      allow(player_two).to receive(:chosen_outcome).and_return('PAPER')
      game.checks_winner
      expect(game.get_looser).to eq(player_two)
    end

    it 'deducts points from opponent' do
      allow(player_one).to receive(:chosen_outcome).and_return('SCISSORS')
      allow(player_two).to receive(:chosen_outcome).and_return('PAPER')
      game.checks_winner
      expect(player_two).to receive(:deduct_hp)
      expect(player_two).to receive(:hit_points)
      game.reduce_hp_from_looser
    end
  end

end
