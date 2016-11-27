require 'computer'

describe Computer do
  subject(:computer) {Computer.new('Computer')}

  describe '#computer_name' do
    it 'returns the name of the computer' do
      expect(computer.name).to eq 'Computer'
    end
  end
  
end
