require 'player'

describe Player do
  subject(:akram) { Player.new('Akram')}
  describe '#name' do
    it 'returns its own name' do
      expect(akram.name).to eq 'Akram'
    end
  end
end
