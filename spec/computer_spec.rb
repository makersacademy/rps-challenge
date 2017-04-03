require 'computer'
describe Computer do
  let(:computer) {described_class.new}
  describe '#choose' do
    it 'chooses rock' do
      computer = object_double(described_class.new, :choose => "Rock")
      expect(computer.choose).to eq("Rock")
    end

    it 'chooses scissors' do
      computer = object_double(described_class.new, :choose => "Scissors")
      expect(computer.choose).to eq("Scissors")
    end

    it 'chooses paper' do
      computer = object_double(described_class.new, :choose => "Paper")
      expect(computer.choose).to eq("Paper")
    end
  end

end
