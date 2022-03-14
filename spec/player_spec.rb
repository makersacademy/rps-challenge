require 'player'

describe Player do
  subject(:player) { described_class.new('Samuel')}

  context '#new' do
    it 'returns the correct name' do
      expect(player.name).to eq 'Samuel'
    end
  end
end