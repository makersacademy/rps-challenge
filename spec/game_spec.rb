require 'game'

describe Game do

  subject(:game) { Game.new }

  describe 'select_weapon' do
    it 'allows player to select a weapon' do
      expect { game.select_weapon("scissors") }.to change { game.chosen_weapon }.from("rock").to("scissors")
    end
  end
end
