require 'player'

RSpec.describe Player do
  subject(:bob) { described_class.new('Bob') }

  describe '#name' do
    it 'returns the name' do
      expect(bob.name).to eq('Bob')
    end

  end
end
