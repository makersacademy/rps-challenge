require 'game.rb'

describe Game do

  subject(:game) { described_class.new('player', "choices") }

  describe '#play' do
    it 'should return the outcome of a game' do
      allow(game.choices).to receive(:new_game).with("arg").and_return("You win")
      expect(game.play("arg")).to eq "You win"
    end
  end
end
