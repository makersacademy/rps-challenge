require 'rps_game'

describe RPSGame do
  let(:game) { RPSGame.new() }

  describe '#play' do
    it 'returns the outcome of the game and the opponent\'s choice' do
      srand(23_523)

      outcome = game.play('rock')

      expect(outcome).to eq({ outcome: 'win', opponent: 'scissors' })
    end
  end
end
