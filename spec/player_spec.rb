require 'player'

describe Player do

  let(:player) { described_class.new("Tom") }
    it 'allows the player to choose a weapon' do
      player.choose_weapon(:rock)
      expect(player.weapon_choice).to eq(:rock)
    end


end
