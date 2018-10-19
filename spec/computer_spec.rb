require 'computer'

describe Computer do

  describe '#choice' do
    it 'it returns rock' do
      allow(Kernel).to receive(:rand).and_return 1
      computer = Computer.new
      expect(computer.choice).to eq ('rock')
    end
    it 'it returns paper' do
      allow(Kernel).to receive(:rand).and_return 2
      computer = Computer.new
      expect(computer.choice).to eq ('paper')
    end
    it 'it returns scissors' do
      allow(Kernel).to receive(:rand).and_return 3
      computer = Computer.new
      expect(computer.choice).to eq ('scissors')
    end
  end

end
