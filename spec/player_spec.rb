require 'player'

describe Player do
  subject(:player) { described_class.new("Player") }

  describe '#wins' do
    it "initializes with a default amount of points" do
      expect(player.wins).to eq(Player::HANDICAP)
    end
    it "increases win count if player wins a point" do
      expect{player.win}.to change{player.wins}.by 1
    end
  end

  describe 'name' do
    it "shows the player's name" do
      expect(player.name).to eq("Player")
    end
  end

  describe '#restart' do
    it "restarts the player's wins" do
      player.restart
      expect(player.wins).to eq(0)
    end
  end
end
