require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#choice' do
    it 'should return a choice of weapon' do
      expect(computer.choice).to eq 'Paper'
    end
  end

end
