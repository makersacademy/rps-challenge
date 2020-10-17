require 'computer'

describe Computer do
  describe '#choices' do
    it 'can return array of all choices' do
      expect(subject.choices).to eq(['Rock', 'Paper', 'Scissors'])
    end
  end

  describe '#move' do
    it 'can return a single choice' do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(subject.move).to eq('Rock')
    end
  end
end