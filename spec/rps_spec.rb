require 'rps'

describe Rps, :rps do
  let(:subject) { Rps.new(player) }
  let(:player) { 'sam' }
  let(:choice) { 'rock' }
  let(:cp_choice) { 'scissors' }

  describe '#player' do
    it 'Returns the player name' do
      expect(subject.player).to eq player
    end
  end

  describe '#select_move' do
    it 'returns the players choice' do
      allow(subject).to receive(:computer_move) { cp_choice }
      subject.select_move(choice)
      expect(subject.player_move).to eq choice
      expect(subject.computer_move).to eq cp_choice
    end
  end
end
