require 'computer_opponent'

describe ComputerOpponent do
subject(:computer_opponent) { described_class.new }
  it 'responds to random choice method' do
    expect(computer_opponent).to respond_to(:random_choice)
  end
  
  describe '#random_choice' do
    it 'returns a rps value' do
      allow(computer_opponent).to receive(:random_choice).and_return(:rock)
      expect(computer_opponent.random_choice).to eq(:rock)
    end
  end
end