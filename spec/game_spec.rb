require 'game'

describe Game do
  describe '.create' do
    it "Should create a new instance of Game" do
      expect(Game.create).to be_an_instance_of(Game)
    end
  end
  describe 'access' do
    it "Should return an instance of Game" do
      game = Game.create
      expect(Game.access).to eq game
    end
  end
end
