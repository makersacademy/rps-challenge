require 'computer'

describe Computer do
  subject(:computer) {described_class.new}

  context 'Initialization' do
    it 'has a gesture' do
      expect(computer.hand).to_not be_empty
    end
  end
end
