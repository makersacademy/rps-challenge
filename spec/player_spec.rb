require 'player'
describe Player do

  subject(:player) { Player.new("Bene") }

  context 'initialize' do
    it 'creates a name instance variable' do
      expect(player.name).to eq("Bene")
    end
  end
end
