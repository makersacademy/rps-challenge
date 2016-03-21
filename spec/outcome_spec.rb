require 'outcome'

describe Outcome do

  let(:player1) {double(:player)}
  let(:player2) {double(:player)}
  subject(:outcome) {described_class.new(:weapon1, :weapon2)}
    
  describe '#winner?' do
    it 'should return the winner of the match' do
      allow(outcome).to receive(:battle).and_return(:loose)
      expect(outcome.winner?).to eq :player2
    end

    it 'should return tie' do
      allow(outcome).to receive(:battle).and_return(:tie)
      expect(outcome.winner?).to eq :tie
    end
  end
end