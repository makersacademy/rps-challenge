require 'player'

describe Player do
  subject (:player) {described_class.new("Luni")}

  describe '#name' do
    it 'returns the name' do
      expect(player.name).to eq('Luni')
    end
  end
end

