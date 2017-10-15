require 'game.rb'

describe Game do

  subject(:game) { Game.new('Rock') }
  describe '#move' do
    it "returns the player's move" do
      expect(game.move).to eq 'Rock'
    end
  end

  describe '#random_counter_move' do
    it "returns a random rock, paper, scissors move" do
      expect(["Rock", "Paper", "Scissors"]).to include(game.random_counter_move)
    end
  end

  # describe '#result' do
  #   it "calculates whether player hs won or lost the game" do
  #     move = "Rock"
  #     counter = "Paper"
  #     expect(game.result(move, counter))
  #   end
  # end

end
