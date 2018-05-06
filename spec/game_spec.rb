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

  describe "#result" do
    context "#win" do
      it "returns the result 'win' if player wins" do
        game.add_player_weapon(:paper)
        allow(game).to receive(:computer_weapon) { :rock }
        game.results
        expect(game.result).to eq :win
      end
    end

    context "#lose" do
      it "returns the result 'win' if player wins" do
        game.add_player_weapon(:scissors)
        allow(game).to receive(:computer_weapon) { :rock }
        game.results
        expect(game.result).to eq :lose
      end
    end
  end
end
