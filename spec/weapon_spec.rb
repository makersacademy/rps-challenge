describe Weapon do
  describe '#beats?' do
    it 'obeys game rules' do
      game = Weapon.new('rock')
      weapon = Weapon.new('scissors')
      expect(game.beats?(weapon)).to eq(true)
    end
  end
end