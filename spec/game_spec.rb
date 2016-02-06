require 'game'

describe Game do

  subject(:game) { described_class.new(player_1) }
  let(:player_1) { double :player_1 }

  describe "#attack" do

    it 'creates an instance of the player class and passes in the name given as an argument' do
      expect(game.player_1.name).to eq(player_1)
    end

  end

end
