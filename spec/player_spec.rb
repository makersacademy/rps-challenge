# spec/player_spec.rb
require 'player'

describe Player do
  subject(:miho) { Player.new('Miho') }
  subject(:josh) { Player.new('Josh') }

  describe '#name' do
    it 'returns the name' do
      expect(miho.name).to eq('Miho')
    end
  end
end
