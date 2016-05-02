require 'game'
require_relative '../lib/player'

describe Game do
  let(:game) { Game.new(player) }
  let(:player) { Player.new('Mara') }

  describe "#play" do
    it "makes a choice on weapon" do
      game.stub(:computer_random_weapon).and_return(true)
      game.computer.choose(:scissors)
      expect(game.play("rock")).to eq :win
    end
  end

  describe "#computer_random_weapon" do
    it "computer choses random weapon" do
      game.computer_random_weapon()
      expect(game.computer.weapon).not_to be_empty
    end
  end

  describe "#player_drew" do
    it "checks whether chosen weapons are the same" do
      game.stub(:computer_random_weapon).and_return(true)
      game.computer.choose(:scissors)
      expect(game.play("scissors")).to eq :draw
    end
  end
  
end