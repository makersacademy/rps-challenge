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

  describe '.create' do
    it 'saves an instance of RPSGame in a class instance variable' do
      expect(described_class).to receive(:new).with(player1, player2)

      RPSGame.create(player1, player2)
    end
  end
end
