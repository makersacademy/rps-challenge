require 'weapon_factory'
require 'weapons/rock'
require 'weapons/scissors'

describe WeaponFactory do
  describe '#create' do
    context 'Rock' do
      it 'instantiates a Rock' do
        allow(Rock).to receive(:new).and_return('instance')
        expect(WeaponFactory.create('Rock')).to eq 'instance'
      end
    end
    context 'Scissors' do
      it 'instantiates a Scissors' do
        expect(Scissors).to receive(:new)
        WeaponFactory.create('Scissors')
      end
    end
    context 'Paper' do
      it 'instantiates a Paper' do
        expect(WeaponFactory.create('Paper')).to be_an_instance_of Paper
      end
    end
  end
end
