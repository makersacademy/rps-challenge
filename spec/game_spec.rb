require 'game'

describe "Game" do
  subject(:game) { Game.new(sam) }
  let(:sam) { double(:player, name: "Sam") }

  describe 'initialize' do
    it "accepts a player instance" do
      expect(game.player).to eq sam
    end
  end

end
