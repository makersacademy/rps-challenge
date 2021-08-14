require 'game'

describe Game do

  let(:player1) { double }
  let(:player2) { double }

  let(:subject) { described_class.new(player1, player2) }

  describe "#initialize" do
    it 'creates player1' do
      expect(subject).to respond_to(:player1)
    end

    it 'creates player2' do
      expect(subject).to respond_to(:player2)
    end
  end

  describe '#outcome' do
    it 'tests weapons against rules to get outcome' do
      rules = double
      expect(rules).to receive(:result)
      subject.outcome(rules)
    end
  end

end
