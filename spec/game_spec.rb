require 'game'

describe Game do

  let(:player){ Player.new("Macey Forever") }
  let(:computer){ Computer.new }
  subject(:game){ Game.new(computer, player) }

  describe 'choices hash' do
    it 'adds a weapon to hash when selected' do
      game.add_selection("rock", "scissors")
      expect(game.choices).to include("rock")
      expect(game.choices).to include("scissors")
    end
  end

  context 'winning and losing' do
    describe 'when player wins' do
      it 'assigns player as winner' do

      end
    end

    describe 'when computer wins' do
      it 'assigns computer as winner' do

      end
    end
  end

  context 'draw' do
    it 'assigns neither player nor computer as winner' do

    end
  end



end
