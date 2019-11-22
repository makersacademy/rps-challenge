require 'player'
describe Player do
  subject(:player) { Player.new('Mario') }
  describe '#Name' do
    it 'returns the name' do
      expect(player.name).to eq 'Mario'
    end
  end
end
