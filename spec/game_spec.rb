require 'spec_helper'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe "#new" do
    it 'initializes with instances of player' do
      expect(game.player_1).to eq player_1
    end
  end

  context "results" do
    player_1 = Player.new("Jason")
    player_2 = Player.new("Rob")
    game = Game.new(player_1, player_2)
    game.player_1.choice("Paper")
    game.player_2.choice("Rock")
    
    describe "#winner" do
      it 'returns the winner' do
        expect(game.winner).to eq player_1
      end
    end

    describe "#loser" do
      it 'returns the loser' do
        expect(game.loser).to eq player_2
      end
    end
  end
end
