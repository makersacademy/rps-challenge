require 'player'

describe Player do

  subject(:player) { described_class.new "Jamie" }

  describe 'name attributes' do
    it 'is initialized with a name which can be called' do
      expect(subject.name). to eq "Jamie"
    end
  end

  describe '#check_weapon' do
    it 'raises an error if weapon choice does not exist' do
      expect{ player.check_weapon('potato') }.to raise_error 'Weapon does not exist'
    end

    it 'does not raise error if weapon choice exists' do
      expect(player.check_weapon(:rock)).to eq true
    end
  end

end
