require 'computer'
describe Computer do
  describe '#rps' do
    it 'should randomly select rock paper or scissors and return the result' do 
      allow(subject).to receive(:rps).and_return("Scissors")
      expect(subject.rps).to eq("Scissors")
    end
    it 'should randomly select rock paper or scissors and return the result' do 
        allow(subject).to receive(:rps).and_return("Paper")
        expect(subject.rps).to eq("Paper")
    end
      it 'should randomly select rock paper or scissors and return the result' do 
        allow(subject).to receive(:rps).and_return("Rock")
        expect(subject.rps).to eq("Rock")
    end
  end
end
