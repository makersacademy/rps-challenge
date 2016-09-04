require 'player'

describe Player do

subject (:player) {described_class.new(name)}
let (:name) {double :name}

  it 'player name should be accessible' do
    expect(player.name).to eq name
  end

  describe '#choose_weapon' do
    context 'weapon not valid' do
      it 'allows player to pass only a valid weapon' do
        expect{player.choose_weapon(:test)}.to raise_error('not a valid weapon')
      end
    end
    it 'should choose a weapon' do
      player.choose_weapon("scissors")
      expect(player.weapon).to eq :scissors
    end
    it 'returns the weapon' do
      expect(player.choose_weapon(:rock)).to eq :rock
    end
  end

end
