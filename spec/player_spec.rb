require 'player'

describe Player do

  subject(:player) {described_class.new("Johnny")}

  describe '#new' do

    it 'initializes with a name' do
      expect(player.name).to eq "Johnny"
    end

  end

  describe '#choose_weapon' do

    it 'responds to #choose_weapon' do
      expect(player).to respond_to :choose_weapon
    end

    it 'stores a weapon' do
      player.choose_weapon(Weapons, :rock)
      expect(player.weapon).to eq :rock
    end

  end

  describe 'error handling' do

    describe 'names' do

      it 'doesn\'t allow names to be anything except Strings' do
        message = "Player name must be a string"
        expect{ Player.new(23) }.to raise_error(RuntimeError, message)
      end

    end

    describe 'choosing weapons' do

      it 'requires the player to choose from the available weapons' do
        message = "Sorry, that weapon isn't available"
        expect{ player.choose_weapon(Weapons, "Banana") }.to raise_error(RuntimeError, message)
      end

    end

  end
end
