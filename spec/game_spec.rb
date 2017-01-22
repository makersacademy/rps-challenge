require 'game'
require 'player'

describe Game do
  let(:player) { instance_double 'Player' }
  let(:computer) { double :computer }
  subject(:game) {described_class.new(:player)}

  it 'initializes with a player' do
    expect(game.player).to eq :player
  end

  describe "#winner" do

    it 'returns the winner of the game' do
      allow(:player).to receive(:weapon).and_return("paper")
      allow(:computer).to receive(:weapon).and_return("rock")
      expect(game.winner).to eq :player.name
    end
  end

end
