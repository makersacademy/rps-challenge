require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe '#initialize' do
    it 'has a name' do
      expect(computer.name).to eq "The Evil Computer"
    end
  end
end
