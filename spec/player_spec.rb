require 'player'

describe Player do

  subject(:player_1) { described_class.new("Telgi") }
  subject(:default_player) { described_class.new() }

  describe '#name' do
    it 'returns the name of the player' do
      expect(player_1.name).to eq "Telgi"
    end

    it 'returns default name if nothing is entered' do
      expect(default_player.name).to eq "Player"
    end
  end

  describe '#select_move' do
    it 'allows player one to select rock' do
      player_1.choose("Rock")
      expect(player_1.move).to eq :rock
    end
  end

end
