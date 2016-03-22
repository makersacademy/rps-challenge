require 'player'

describe Player do

  let(:name) { 'Sam' }
  let(:weapon) { :Scissors }
  let(:invalid_weapon) { 'Bottle' }
  subject(:player) { described_class.new(name) }

  describe '#initialize' do
    it 'sets the value of name' do
      expect(player.name).to be name
    end
  end

  describe '#weapon=' do
    it 'sets the value of weapon' do
      player.weapon= weapon
      expect(player.weapon).to be weapon
    end
    it 'raises an error if the weapon is invalid' do
      message = 'Invalid weapon!'
      expect{ player.weapon= invalid_weapon }.to raise_exception message
    end
  end

end
