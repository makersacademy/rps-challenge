require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  describe '#generate_response' do
    it 'can choose "rock" from rock, paper and scissors' do
      srand(2)
      expect(computer.generate_response).to eq :Rock
    end

    it 'can choose "paper"' do
      srand(1)
      expect(computer.generate_response).to eq :Paper
    end

    it 'can choose "scissors"' do
      srand(3)
      expect(computer.generate_response).to eq :Scissors
    end
  end

  describe '#message' do
    it 'explains what the computer chose' do
      srand(1)
      computer.generate_response
      expect(computer.message).to eq 'Computer chose Paper'
    end
  end
end
