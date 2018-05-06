require 'game'
require_relative '../lib/player'
require_relative '../lib/computer'


describe Game do

  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player, name: "Asia" }
  let(:computer) { double :computer }

  describe "#add_player_weapon" do
    it 'sets weapon for the player' do
      game.add_player_weapon('scissors')
      expect(game.player_weapon).to eq 'scissors'
    end
  end

  describe "#add_computer_weapon" do
    it 'sets random weapon for computer' do
      allow(game).to receive(:computer_weapon) { :rock }
      game.add_computer_weapon
      expect(game.computer_weapon).to eq :rock
    end
  end
end
