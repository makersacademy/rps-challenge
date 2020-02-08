require 'spec_helper'

describe Game do
  subject(:game) { Game.new(player_1, player_2) }
  let(:player1) { double :player_1}
  let(:player2) { double :player_2}
  
  describe "#new" do
    it 'initializes with instances of player' do
      expect(game.player).to eq player_1
    end
  end
end