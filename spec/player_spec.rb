require 'player'

describe Player do
  subject(:player){Player.new('Susie')}

  describe 'name' do
    it 'knows its own name' do
      expect(player.name).to eq 'Susie'
    end
  end

  describe 'score' do
    it 'knows its score' do
      expect(player.score).to eq 0
    end

    it 'score increases after winning' do
      player.win(1)
      expect(player.score).to eq 1
    end
  end

  describe 'selection' do
    it 'knows its selection' do
      rock = Weapon.new('Rock')
      player.choose_weapon(rock)
      expect(player.weapon).to eq (rock)
    end
  end

end
