require 'computer'

describe Computer do
  subject(:computer){described_class.new}


  describe '#initialize' do

    it 'initializes with a choice' do
      allow(Game::WEAPONS).to receive(:keys).and_return(['Rock'])
      expect(computer.weapon).to eq('Rock')
    end

    it 'initializes with a name' do
      expect(computer.name).to eq('Computer')
    end

  end

  describe '#weapon_value' do

    it 'assigns the weapon a value' do
      allow(Game::WEAPONS).to receive(:keys).and_return(['Rock'])
      expect(computer.weapon_value).to eq(Game::WEAPONS['Rock'])
    end

  end

end
