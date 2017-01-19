require 'computer'

describe Computer do
  subject(:computer) {Computer.new}

  describe '#computer_name' do
    it 'returns the name of the computer' do
      expect(computer.name).to eq 'Computer'
    end
  end

  describe '#computer_choice' do
    it 'chooses a random option from rock, paper, scissors array' do
      expect(computer.computer_choice).to eq(:rock).or(eq(:paper)).or(eq(:scissors))
    end
  end

end
