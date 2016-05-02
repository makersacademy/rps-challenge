require 'player'

describe Player do
  subject (:player) {described_class.new("Luni")}

  describe '#name' do
    it 'returns the name' do
      expect(player.name).to eq('Luni')
    end
  end

  describe '#add_points' do
    it 'adds a point to players points' do
      expect{player.add_points}.to change{player.points}.by(1)
    end
  end
end

