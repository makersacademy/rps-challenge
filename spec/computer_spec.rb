require 'computer'

describe Computer do

  describe '#choice' do
    it 'it returns rock' do
      allow(Kernel).to receive(:rand).and_return 1
      computer = Computer.new
      expect(computer.choice).to eq 'Rock'
    end
    it 'it returns paper' do
      allow(Kernel).to receive(:rand).and_return 2
      computer = Computer.new
      expect(computer.choice).to eq 'Paper'
    end
    it 'it returns scissors' do
      allow(Kernel).to receive(:rand).and_return 3
      computer = Computer.new
      expect(computer.choice).to eq 'Scissors'
    end
  end

end
