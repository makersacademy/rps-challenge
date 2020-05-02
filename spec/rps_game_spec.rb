require 'rps_game'

describe RPSGame do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { instance_double HumanPlayer }
  let(:player2) { instance_double ComputerPlayer }

  it { is_expected.to respond_to(:result).with(2).arguments }
end
