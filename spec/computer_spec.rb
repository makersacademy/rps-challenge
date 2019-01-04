require 'computer'
describe Computer do

  let(:computer) { described_class.new }
  let(:moves) { ['rock', 'paper', 'scissors'] }

  describe '#choose_move' do
    it 'generates computer\'s move' do
      computer.update_move
      expect(computer.move).to include computer.move
    end
    it 'returns computer\'s random move when rock' do
      allow(Kernel).to receive(:rand) { 0 }
      computer.update_move
      expect(computer.move).to eq 'rock'
    end
    it 'returns computer\'s random move when paper' do
      allow(Kernel).to receive(:rand) { 1 }
      computer.update_move
      expect(computer.move).to eq 'paper'
    end
    it 'returns computer\'s random move when scissors' do
      allow(Kernel).to receive(:rand) { 2 }
      computer.update_move
      expect(computer.move).to eq 'scissors'
    end
  end
end
