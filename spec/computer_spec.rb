require 'computer'

describe Computer do
  describe '#move' do
    it 'picks Rock' do
    allow(subject).to receive(:move).and_return 'Paper'
    expect(subject.move).to eq 'Paper'
    end
  end 
end

describe Computer do
    describe '#move' do
      it 'picks one of r/p/s' do
        expect(subject.move).to eq("Rock").or eq("Paper").or eq("Scissors")
      end
    end 
  end
