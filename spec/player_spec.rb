require 'player'
require 'game'

describe Player do
  subject(:player){described_class.new('Rock', 'Emma')}

  describe '#initialize' do


    it 'initializes with a choice' do
      expect(player.weapon).to eq('Rock')
    end

    it 'initializes with a name' do
      expect(player.name).to eq('Emma')
    end

  end

  describe '#weapon_value' do

    it 'assigns the weapon a value' do
      expect(player.weapon_value).to eq(Game::WEAPONS['Rock'])
    end

  end

end
