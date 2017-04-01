require 'computer'

describe Computer do
  subject(:deepblue) { described_class.new("Deep Blue") }

  describe '#name' do
    it 'returns the name' do
      expect(deepblue.name).to eq 'Deep Blue'
    end
  end

  describe '#attack_method' do
    it 'returns an attack method' do
      expect(deepblue.attack_method).to eq 'Rock'
    end
  end
end
