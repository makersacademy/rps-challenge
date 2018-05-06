require 'game'
require_relative '../lib/player'
require_relative '../lib/computer'


describe Game do

  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player, name: "Asia" }
  let(:computer) { double :computer }

  describe "#add_weapon" do
    it 'set weapon for the player' do
      game.add_weapon('scissors')
      expect(game.player_weapon).to eq 'scissors'
    end
  end
end
