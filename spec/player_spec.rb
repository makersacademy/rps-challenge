require 'player'

describe Player do
  subject(:joe) { Player.new('Joe') }

  describe '#name' do
    it 'returns Player name' do
      expect(joe.name).to eq('Joe')
    end
  end
end
