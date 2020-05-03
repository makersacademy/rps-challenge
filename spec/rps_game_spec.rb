require 'rps_game'

describe RPSGame do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { instance_double HumanPlayer }
  let(:player2) { instance_double ComputerPlayer }

  it { is_expected.to respond_to(:result).with(2).arguments }

  describe '#result' do
    it 'returns the game result' do
      expect(player1).to receive(:weapon) { :rock }
      expect(player2).to receive(:weapon) { :paper }

      game.result(player1.weapon, player2.weapon)
    end
  end

  describe '.create' do
    it 'saves an instance of RPSGame in a class instance variable' do
      expect(described_class).to receive(:new).with(player1, player2)

      RPSGame.create(player1, player2)
    end
  end

  describe '.instance' do
    it 'returns an instance of RPSGame' do
      game = RPSGame.create(player1, player2)

      expect(RPSGame.instance).to eq game
    end
  end

  describe '#player2' do
    it 'can change the value of player2' do
      new_player = double :new_player
      game.player2 = new_player
      RPSGame.create(player1, new_player)

      expect(RPSGame.instance.player2).to eq new_player
    end
  end
end
