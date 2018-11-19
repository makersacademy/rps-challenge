require 'player'

describe Player do

  subject(:player) { Player.new('Tomas') }

  describe '#initialize' do
    it "initializes with the player's name" do
      expect(player.name).to eq 'Tomas'
    end
  end

  describe '#selection(weapon)' do
    it 'knows which weapon the player has selected' do
      player.selection('Paper')
      expect(player.player_choice).to eq 'Paper'
    end
  end
end
