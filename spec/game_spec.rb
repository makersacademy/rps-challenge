require 'game'

describe Game do
  subject(:game) { described_class.new(monty) }
  let(:monty) { double :player, name: "Monty" }

  describe '#initalize' do
    it 'should pass arguments to instance of Player' do
      expect(game.player).to eq monty
    end
  end

  describe '#player_choice' do
    it 'should return the player\'s choice' do
      expect(game.player_choice("Rock")).to eq "Rock"
    end
  end


end
