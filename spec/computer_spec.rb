require 'computer'

describe Computer do

subject(:computer) {described_class.new} 

  describe '#weapon' do
    it 'should output random weapon' do
      allow(computer).to receive(:rand).and_return(1)
      expect(computer.weapon).to eq 'rock'
    end

     it 'should output random weapon' do
      allow(computer).to receive(:rand).and_return(2)
      expect(computer.weapon).to eq 'paper'
    end

     it 'should output random weapon' do
      allow(computer).to receive(:rand).and_return(3)
      expect(computer.weapon).to eq 'scissors'
    end
  end
end