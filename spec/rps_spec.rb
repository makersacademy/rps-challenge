require 'rps'

describe Rps, :rps do
  let(:subject) { Rps.new(player) }
  let(:player) { 'sam' }
  let(:choice) { 'rock' }

  describe '#player' do
    it 'Returns the player name' do
      expect(subject.player).to eq player
    end
  end

  describe '#select_move' do
    it 'returns the players choice' do
      subject.select_move(choice)
      expect(subject.player_move).to eq choice
    end
  end
end
