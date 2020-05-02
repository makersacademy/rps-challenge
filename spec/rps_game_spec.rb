require 'rps_game'

describe RPSGame do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { instance_double HumanPlayer }
  let(:player2) { instance_double ComputerPlayer }

  it { is_expected.to respond_to(:result) }

  describe '#result' do
    it 'returns the game result' do
      expect(player1).to receive(:weapon) {:rock}
      expect(player2).to receive(:weapon) {:paper}

      game.result
    end
  end
end
