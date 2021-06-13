require 'player'

describe Player do
  subject(:mikey) { Player.new('mikey') }
  let(:player) { player}
  describe '#name' do
    it 'returns the name' do
      expect(mikey.name).to eq 'mikey'
    end
  end
end