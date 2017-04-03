require 'computer'
describe Computer do
  let(:computer) {described_class.new}

  describe '#choose' do
    it 'Should be able to choose rock' do
      computer = object_double(described_class.new, :choose => "Rock")
      expect(computer.choose).to eq("Rock")
    end

    it 'Should be able to choose scissors' do
      computer = object_double(described_class.new, :choose => "Scissors")
      expect(computer.choose).to eq("Scissors")
    end

    it 'Should be able to choose paper' do
      computer = object_double(described_class.new, :choose => "Paper")
      expect(computer.choose).to eq("Paper")
    end
  end

end
