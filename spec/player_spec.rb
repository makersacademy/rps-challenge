require 'player'

RSpec.describe Player do
  subject(:bob) { described_class.new('Bob', 'Rock') }

  describe '#name' do
    it 'returns the name' do
      expect(bob.name).to eq('Bob')
    end

    describe '#player_choice' do
      it 'returns the choice' do
        expect(bob.choice).to eq('Rock')
      end
    end

  end
end
