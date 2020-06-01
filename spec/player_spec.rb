require 'player'
describe Player do

  subject(:player) { Player.new("Bene") }
  let(:move) { double :move }

  context 'initialize' do
    it 'creates a name instance variable' do
      expect(player.name).to eq("Bene")
      expect(player.player_move).to be nil
    end
  end

  context 'move' do
    it 'takes a string describing the move and gives a value to the player move' do
      player.move(move)
      expect(player.player_move).to eq(move)
    end
  end
end
