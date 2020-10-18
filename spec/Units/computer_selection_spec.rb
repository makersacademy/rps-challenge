require 'computer_selection'

describe ComputerSelection do
  describe 'Checking output' do
    let(:subject) { ComputerSelection.new }
    it 'expect computer selection to be rock therefore player 1 wins as paper beats rock' do
      allow(subject).to receive(:random_selection).and_return("Rock")
      expect(subject.random_selection).to eq "Rock"
    end
  end
end
