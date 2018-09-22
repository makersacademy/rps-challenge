require 'game'

describe Game do
  let(:dwayne_johnson) { double :player }
  let(:scissor_sisters) { double :player }
  let(:rps) { described_class.new(dwayne_johnson, scissor_sisters) }

  let(:no_move_1) { double :player1, move: nil }
  let(:no_move_2) { double :player2, move: nil }
  let(:rps_no_move) { described_class.new(no_move_1, no_move_2)}

  describe '#player_1' do
    it 'returns the player 1 object' do
      expect(rps.player_1).to eq dwayne_johnson
    end
  end

  describe '#player_2' do
    it 'returns the player 2 object' do
      expect(rps.player_2).to eq scissor_sisters
    end
  end

  describe '#winner' do
    it 'raises an error if either player does not have a move' do
      expect{ rps_no_move.winner }.to raise_error 'Players have not made a move'
    end
  end
end
