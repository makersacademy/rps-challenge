require 'game.rb'

describe Game do

  subject(:game) { Game.new('Dave') }
  describe '#player' do
    it "returns the player's name" do
      expect(game.player).to eq 'Dave'
    end
  end

end
