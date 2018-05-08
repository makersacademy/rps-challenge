require 'computer'

describe Computer do

  subject(:cpu) { described_class.new }

  describe '#initialize' do
    it 'has an array of moves' do
      expect(subject.moves).to eq [:rock, :paper, :scissors]
    end
  end

  describe '#move' do
    it 'selects a random move' do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(subject.move).to eq("Rock")
    end
  end
end
