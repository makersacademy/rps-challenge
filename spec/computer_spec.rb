require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe '#attack' do
    it 'returns a random attack' do
      expect(Computer::ATTACK_METHOD).to include computer.attack
    end
  end

end
