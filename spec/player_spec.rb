require 'player'

describe Player do
  subject(:player) { Player.new('Tim') }

  describe '#name' do
    it 'gives the name' do
      expect(player.name).to eq('Tim')
    end
  end

  describe '#choose_weapon' do
    it 'allows the player to select a weapon' do
      player.choose_weapon("paper")
      expect(player.weapon_of_choice).to eq("paper")
    end
  end

end
