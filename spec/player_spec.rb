require 'player'

describe Player do
  subject(:jordan) { Player.new('jordan') }

  describe '#name' do
    it 'returns a players name' do
    expect(jordan.name).to eq 'jordan'
    end
  end
end
