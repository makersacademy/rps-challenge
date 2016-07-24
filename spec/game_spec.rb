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

  context 'When the game is a draw' do
    before(:each) do
      allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
      game.select_computer_weapon
    end

    describe '#draw?' do
      it 'knows when the result is a draw' do
        game.select_weapon("Paper")
        expect(game.draw?).to be true
      end

      it 'knows when the result is not a draw' do
        game.select_weapon("Rock")
        expect(game.draw?).to be false
      end
    end
  end

  context 'Determining the result' do

    describe '#result' do
      it 'returns a result' do
        expect([:draw, :win, :lose]).to include(game.result)
      end
    end

    context 'when player selects Rock' do
      before(:each) do
        game.select_weapon("Rock")
      end

      it 'knows player draws against computer Rock' do
        allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
        game.select_computer_weapon

        expect(game.result).to eq :draw
      end

      it 'knows player loses against computer Paper' do
        allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
        game.select_computer_weapon

        expect(game.result).to eq :lose
      end

      it 'knows player wins against computer Scissors' do
        allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
        game.select_computer_weapon

        expect(game.result).to eq :win
      end
    end

    context 'when player selects Paper' do
      before(:each) do
        game.select_weapon("Paper")
      end

      it 'knows player wins against computer Rock' do
        allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
        game.select_computer_weapon

        expect(game.result).to eq :win
      end

      it 'knows player draws against computer Paper' do
        allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
        game.select_computer_weapon

        expect(game.result).to eq :draw
      end

      it 'knows player loses against computer Scissors' do
        allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
        game.select_computer_weapon

        expect(game.result).to eq :lose
      end
    end

    context 'when player selects Scissors' do
      before(:each) do
        game.select_weapon("Scissors")
      end

      it 'knows player loses against computer Rock' do
        allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
        game.select_computer_weapon

        expect(game.result).to eq :lose
      end

      it 'knows player wins against computer Paper' do
        allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
        game.select_computer_weapon

        expect(game.result).to eq :win
      end

      it 'knows player draws against computer Scissors' do
        allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
        game.select_computer_weapon

        expect(game.result).to eq :draw
      end
    end
  end
end

#Kernel.stub(:rand).with(anything)
