require 'game'
require 'player'

describe Game do 
  let(:player_1) { double 'player_1' }
  let(:player_2) { double 'player_2' }
  subject(:game) { described_class.new(player_1, player_2) }

  context '#initialize' do 
    it "initializes with Player as an argument" do 
      allow(game.player_1).to receive(:name)
    end 
  end
end