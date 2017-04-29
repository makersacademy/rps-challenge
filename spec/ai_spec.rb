require './lib/ai'

describe Ai do

  let(:ai) { described_class.new }

  context 'set-up' do

    it 'knows its name' do
      expect(ai.name).to eq "Watson"
    end

    it 'has a random weapon assigned to it' do
      allow(ai).to receive(:choice).and_return(:paper, :paper, :scissors)
      expect(ai.choice).to eq :paper
      expect(ai.choice).to eq :paper
      expect(ai.choice).to eq :scissors
    end

  end

end
