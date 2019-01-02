require 'computer'
describe Computer do

  let(:subject) { described_class.new }
  let(:moves) { ['rock', 'paper', 'scissors'] }

  describe '#choose_move' do
    it 'generates computer\'s move' do
      subject.update_move
      expect(subject.move).to include subject.move
    end
    it 'returns computer\'s random move when rock' do
      allow(Kernel).to receive(:rand) { 0 }
      subject.update_move
      expect(subject.move).to eq 'rock'
    end
    it 'returns computer\'s random move when paper' do
      allow(Kernel).to receive(:rand) { 1 }
      subject.update_move
      expect(subject.move).to eq 'paper'
    end
    it 'returns computer\'s random move when scissors' do
      allow(Kernel).to receive(:rand) { 2 }
      subject.update_move
      expect(subject.move).to eq 'scissors'
    end
  end
end
