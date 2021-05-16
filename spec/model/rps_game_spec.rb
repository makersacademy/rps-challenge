require 'rps_game'

describe RPSGame do
  let(:game) { RPSGame.new() }

  describe '#outcome' do
    context 'when the user wins' do
      it 'returns "win"' do
        srand(23523)

        game.play('rock')

        expect(game.outcome).to eq('win')
      end
    end
    
    context 'when the user loses' do
      it 'returns "loss"' do
        srand(23604)

        game.play('rock')

        expect(game.outcome).to eq('loss')
      end
    end

    context 'when the user draws' do
      it 'returns "draw"' do
        srand(23423)

        game.play('rock')

        expect(game.outcome).to eq('draw')
      end
    end
  end
end
