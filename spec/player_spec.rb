require 'player'

describe Player do
  subject(:player) { described_class.new 'Michael' }

  describe '#name' do
    it 'should be able to return the player\'s name' do
      expect(player.name).to eq 'Michael'
    end
  end

  describe '#select_weapon' do
    it 'should fail if weapon selected is not within the Game::WEAPONS array' do
      expect{ player.select_weapon(:kitty) }.to raise_error 'Not a valid weapon'
    end

    it 'should set @weapon_choice equal to weapon passed' do
      player.select_weapon(:rock)
      expect(player.weapon_choice).to eq :rock
    end
  end

end
