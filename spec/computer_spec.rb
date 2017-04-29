require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  describe '#generate_response' do
    it 'can choose "rock" from rock, paper and scissors' do
      srand(2)
      expect(computer.generate_response).to eq :Rock
    end

    it 'can choose "paper"' do
      srand(10)
      expect(computer.generate_response).to eq :Paper
    end

    it 'can choose "scissors"' do
      srand(3)
      expect(computer.generate_response).to eq :Scissors
    end

    it 'can choose "lizard"' do
      srand(1)
      expect(computer.generate_response).to eq :Lizard
    end

    it 'can choose "spock"' do
      srand(7)
      expect(computer.generate_response).to eq :Spock
    end
  end

  describe '#message' do
    it 'explains what the computer chose' do
      srand(1)
      computer.generate_response
      expect(computer.message).to eq 'Computer chose Lizard'
    end
  end
end
