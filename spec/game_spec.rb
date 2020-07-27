require 'game'

describe Game do

  let(:game) { described_class.new("Paul") }

  describe "#initialize" do
    it 'adds player name' do
      expect(game.player).to eq("Paul")
    end
  end

  describe "#weapon" do
    it 'adds a weapon choice' do
      game.weapon("rock")
      expect(game.choice).to eq("rock")
    end
  end
end
