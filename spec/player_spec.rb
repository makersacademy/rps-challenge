require 'player'

describe Player do

  subject(:tim) { Player.new('Tim') }
  subject(:Ian) { Player.new('Ian') }

  describe '#name' do
    it 'returns the name' do
      expect(tim.name).to eq 'Tim'
    end
  end

  describe '#select_weapon' do
    it 'sets player weapon' do
      tim.select_weapon('Rock')
      expect(tim.weapon).to eq :rock
    end
  end

end
