require 'game'

describe Game do
  subject(:game) { Game.new }

  describe '#player_name' do
    it 'displays name' do
      expect(game.player_name_1).to eq :name_1
    end
  end
  
end