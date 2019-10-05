require_relative '../lib/move'

describe Move do
  subject(:move) { described_class.new }
  describe '#move' do
    it 'opponent chooses paper' do
      allow(Kernel).to receive(:rand).and_return(1)

      expect(move.computer_move).to eq "Paper"
    end
  end

  describe '#player_move' do
    it 'player chooses rock' do
      expect(move.player_move("Rock")).to eq "Rock"
    end

    it 'player chooses paper' do
      expect(move.player_move("Paper")).to eq "Paper"
    end

    it 'player chooses scissors' do
      expect(move.player_move('Scissors')).to eq "Scissors"
    end
  end
end
