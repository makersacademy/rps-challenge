require 'challenger'

describe Challenger do
  subject(:challenger) { described_class.new('Link', :rock) }

  describe '#name' do
    it 'returns challenger name' do
      expect(challenger.name).to eq('Link')
    end
  end

  describe '#move' do
    it 'returns challenger move' do
      expect(challenger.move).to eq(:rock)
    end
  end
  
end
