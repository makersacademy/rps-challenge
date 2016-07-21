require 'game'

describe Game do

  subject(:game) { described_class.new(players_name) }
  let(:players_name) { double :player }

  describe '#initialize' do
    it 'stores the name of the player' do
      expect(game.players_name).to eq players_name

    end
  end
end
