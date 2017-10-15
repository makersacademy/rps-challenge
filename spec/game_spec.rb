require 'game.rb'

describe Game do

  subject(:game) { Game.new('Dave') }
  describe '#player' do
    it "returns the player's name" do
      expect(game.player).to eq 'Dave'
    end
  end

  describe '#random_counter_move' do
    it "returns a random rock, paper, scissors move" do
      expect(["rock", "paper", "scissors"]).to include(game.random_counter_move)
    end
  end

end
