require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#random_choice' do
    it 'selects rock' do
      allow_any_instance_of(Array).to receive(:sample).and_return("rock")
      expect(computer.random_choice).to eq "rock"
    end

    it 'selects paper' do
      allow_any_instance_of(Array).to receive(:sample).and_return("paper")
      expect(computer.random_choice).to eq "paper"
    end

    it 'selects scissors' do
      allow_any_instance_of(Array).to receive(:sample).and_return("scissors")
      expect(computer.random_choice).to eq "scissors"
    end
  end
end
