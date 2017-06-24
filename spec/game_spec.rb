require 'game'

describe Game do
  
  subject(:game) { described_class.new('Momo')}
  
  describe 'attributes' do
    it 'has a name' do
      expect(game.name).to eq 'Momo'
    end
  end
  
  describe '#create_new_game' do
    it 'creates a new instance of the game' do
      Game.create_new_game
      expect(Game.game_instance).to be_an_instance_of(Game)
    end
  end
  
  
end
