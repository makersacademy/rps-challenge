require 'player'

describe Player do

  subject(:player) { described_class.new("Fred") }

  describe '#name' do
    it "returns the player's name" do
      expect(player.name).to eq "Fred"
    end
  end

  describe '#points' do
    it 'outputs the points value' do
      expect(player.points).to eq Player::STARTING_POINTS
    end
  end

  describe '#increase_points' do
    it 'increases the player points when they win the round' do
    expect{ player.increase_points }.to change { player.points }.by(+10)
    end
  end
end
