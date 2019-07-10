require 'player'

describe Player do

  subject(:tim) { Player.new('Tim') }

  subject(:mittens) { Player.new('Mittens') }

  describe '#name' do
    it 'returns the name' do
      expect(tim.name).to eq 'Tim'
    end
  end

  describe '#select_weapon' do
    it 'sets player weapon' do
      tim.select_weapon('Rock')
      expect(tim.weapon).to eq 'Rock'
    end
  end
  #
  # describe '#receive_damage' do
  #   it 'reduces the player hit points' do
  #     expect { dave.receive_damage }.to change { dave.hp }.by(-10)
  #   end
  # end

end
