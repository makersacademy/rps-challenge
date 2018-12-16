require 'player'

describe Player do
  subject(:mario) { Player.new('Mario') }

  describe '#name' do
    it 'returns the name' do
      expect(mario.name).to eq 'Mario'
    end
  end
end
