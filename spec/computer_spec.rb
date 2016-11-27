require 'computer'

describe Computer do
  subject(:computer) {Computer.new('Computer')}

  describe '#computer_name' do
    it 'returns the name of the computer' do
      expect(computer.name).to eq 'Computer'
    end
  end

  describe '#computer_choice' do
    it 'chooses a random option from rock, paper, scissors array' do
      expect(computer.choice).to eq('Rock').or(eq('Paper')).or(eq('Scissors'))
    end
  end

end
