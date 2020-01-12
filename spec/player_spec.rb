require 'player'
describe Player do
  let(:subject) { described_class.new('goku') }

  describe '#initialize' do 
    it { expect(subject.name).to eq 'goku' }
  end

  describe '#make_move' do
    it 'responds to make_move' do 
      expect(subject).to receive(:make_move) { 'rock' }
      subject.make_move('rock')
    end
    it 'stores a move' do 
      subject.make_move('rock')
      expect(subject.move).to eq 'rock'
    end
  end

end