require 'challenger'

describe Challenger do
  subject(:challenger) { described_class.new('Link') }

  describe '#name' do
    it 'returns challenger name' do
      expect(challenger.name).to eq('Link')
    end
  end

end
