require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe '#attacck' do
    it 'returns the computer attack choice' do
      expect(Computer::OPTIONS).to include(computer.attack)
    end
  end
end
