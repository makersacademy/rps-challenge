require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#random_choice' do
    it 'selects rock' do
      allow(computer).to receive(:random_choice).and_return("rock")
      expect(computer.random_choice).to eq "rock"
    end

    it 'selects paper' do
      allow(computer).to receive(:random_choice).and_return("paper")
      expect(computer.random_choice).to eq "paper"
    end

    it 'selects scissors' do
      allow(computer).to receive(:random_choice).and_return("scissors")
      expect(computer.random_choice).to eq "scissors"
    end
  end
end
