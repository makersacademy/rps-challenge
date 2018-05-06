require 'computer'

describe Computer do

  subject(:computer) { described_class.new }


  describe 'has a name' do
    it 'returns computer name' do
      expect(computer.name).to eq "The Computer"
    end
  end


end
