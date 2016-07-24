require 'game'

describe 'Game' do

  subject(:game) { Game.new(player) }
  let(:player) { double :player, name: 'Julie' }

  describe '#initialize' do
    it 'returns a player' do
      expect(game.player.name).to eq('Julie')
    end
  end

  context 'Selecting weapons' do
    describe '#select_weapon' do
      it "can accept the player's choice of weapon" do
         game.select_weapon("Rock")
         expect(game.weapon_selected).to eq "Rock"
      end
    end
  end

end

#Kernel.stub(:rand).with(anything)
