require 'game'

describe Game do
  describe '.create' do
    it "Should create a new instance of Game" do
      expect(Game.create('Peter')).to be_an_instance_of(Game)
    end
  end
  describe 'access' do
    it "Should return an instance of Game" do
      game = Game.create('Peter')
      expect(Game.access).to eq game
    end
  end
  describe '#player' do
    it "Should return Peter" do
      game = Game.new('Peter')
      expect(game.player).to eq 'Peter'
    end
  end
end
