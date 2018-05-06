require 'rps'

describe Rps, :rps do
  let(:subject) { Rps.new(player) }
  let(:player) { double :player, name: 'Sam' }
  let(:rock) { :rock }
  let(:paper) { :paper }
  let(:scissors) { :scissors }

  describe '#player' do
    it 'Returns the player name' do
      expect(subject.player).to eq 'Sam'
    end
  end

  describe '#select_move' do
    it 'returns the players choice' do
      allow(subject).to receive(:computer_move) { scissors }
      subject.select_move(rock)
      expect(subject.player_move).to eq rock
      expect(subject.computer_move).to eq scissors
    end
  end

  describe '#outcome' do
    it 'Returns the player as the winner' do
      allow(subject).to receive(:computer_move) { scissors }
      subject.select_move(rock)
      expect(subject.outcome).to eq :win
    end

    it 'Returns the computer as the winner' do
      allow(subject).to receive(:computer_move) { scissors }
      subject.select_move(paper)
      expect(subject.outcome).to eq :lose
    end

    it 'Returns a draw' do
      allow(subject).to receive(:computer_move) { scissors }
      subject.select_move(scissors)
      expect(subject.outcome).to eq :draw
    end
  end
end
