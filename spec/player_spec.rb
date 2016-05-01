require 'player'
describe Player do
subject(:kanye) {Player.new(:Kanye, :rock)}

  describe '#name' do
    it 'returns the name' do
      expect(kanye.name).to eq :Kanye
    end
    describe 'weapon' do
      it 'players has a chosen weapon' do
        expect(kanye.weapon_choice).to eq :rock
      end
    end
  end
end
