require 'computer_player'
describe ComputerPlayer do

  subject(:computer_player) { described_class.new('name') }

  context 'when initialized' do
    it 'takes a string as a parameter and passes it to a name attribute' do
      expect(computer_player.name).to eq 'name'
    end
  end

  describe '#weapon' do
    it 'returns "rock" randomly' do
      srand(903)
      expect(computer_player.weapon).to eq :rock
    end
    it 'returns "paper" randomly' do
      srand(214)
      expect(computer_player.weapon).to eq :paper
    end
    it 'returns "scissors" randomly' do
      srand(334)
      expect(computer_player.weapon).to eq :scissors
    end
  end

end
