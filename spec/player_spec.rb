require 'player'

RSpec.describe Player do
  subject(:player) { Player.new("Dan") }

  describe '#name' do
    it 'returns its name' do
      expect(player.name).to eq("Dan")
    end
  end
end
