require 'game'

describe 'Game' do

  subject(:game) { Game.new(player) }
  let(:player) { double :player, name: 'Julie' }

  describe '#initialize' do
    it 'returns a player' do
      expect(game.player.name).to eq('Julie')
    end
  end

  context 'Selecting Weapons' do
    describe '#select_weapon' do
      it "can accept the player's choice of weapon" do
         game.select_weapon("Rock")
         expect(game.weapon_selected).to eq "Rock"
      end
    end

    describe '#select_computer_weapon' do
      it 'can choose a weapon for the computer' do
        game.select_computer_weapon
        expect(%w(Rock Paper Scissors)).to include(game.computer_weapon)
      end
    end
  end

  context 'Deciding the Winner' do
    describe '#draw?' do
      it 'knows when the result is a draw' do
        game.select_weapon("Paper")
        allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
        game.select_computer_weapon
        expect(game.draw?).to be true
      end

      it 'knows when the result is not a draw' do
        game.select_weapon("Rock")
        allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
        game.select_computer_weapon
        expect(game.draw?).to be false
      end
    end
  end
end

#Kernel.stub(:rand).with(anything)
