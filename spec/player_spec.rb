require 'player'

describe 'Player' do
  subject(:bob) {Player.new('Bob')}

  describe '#initialize' do
    it 'returns a name' do
      expect(bob.name).to eq 'Bob'
    end
  end
end
