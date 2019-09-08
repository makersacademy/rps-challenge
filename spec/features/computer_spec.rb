require './lib/computer.rb'

describe Computer do
  describe '#attack' do
    it 'to return rock' do
      srand(67810)
      expect(subject.attack_with).to eq :Rock
    end
    it 'to return rock' do
      srand(67808)
      expect(subject.attack_with).to eq :Paper
    end
    it 'to return rock' do
      srand(67809)
      expect(subject.attack_with).to eq :Scissors
    end

  end
end