require 'attack'

describe Attack do
  subject(:attack) {described_class.new}


  describe '#calculate_attack' do

    it 'calculates the winning attack' do
      expect(attack.calculate_attack("Rock","Scissors")).to eq 1
    end
    it 'calculates the winning attack' do
      expect(attack.calculate_attack("Rock","Paper")).to eq 2
    end
    it 'calculates the winning attack' do
      expect(attack.calculate_attack("Rock","Rock")).to eq 0
    end
    it 'calculates the winning attack' do
      expect(attack.calculate_attack("Scissors","Paper")).to eq 1
    end
  end

    describe '#generate_random_attack' do
      it 'generates a random attack' do
          allow(Kernel).to receive(:rand).and_return(2)
          srand(2)
          expect(attack.generate_random_attack).to eq 'Scissors'
      end
    end
end
