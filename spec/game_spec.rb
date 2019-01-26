require 'game'

describe Game do
  subject(:game) { described_class.new(player, weapon) }
  let(:player) { double :player }
  let(:weapon) { double :weapon }

  describe "#player" do
    it "register a player" do
      expect(game.player).to eq player
    end
  end

  describe "#machine" do
    it "choose paper" do
      game.instance_variable_set(:@machine, 'PAPER')
      expect(game.machine).to eq "PAPER"
    end
  end

  describe "#outcomes" do
    # NOT SURE HOW TO STUB RANDOM FOM ANOTHER CLASS
    it "Player picks ROCK and computer picks PAPER" do
      game.instance_variable_set(:@weapon, 'ROCK')
      game.instance_variable_set(:@machine, 'PAPER')
      expect(game.outcomes).to eq :lose
    end

  end

end
