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

  describe '#result' do
    it "calculates whether player has lost the game" do
      move = "Rock"
      counter = "Paper"
      expect(game.result(move, counter)).to eq "computer choice is: " + counter + ", computer wins :("
    end
    it "calculates whether player has lost the game" do
      move = "Paper"
      counter = "Scissors"
      expect(game.result(move, counter)).to eq "computer choice is: " + counter + ", computer wins :("
    end
    it "calculates whether player has lost the game" do
      move = "Scissors"
      counter = "Rock"
      expect(game.result(move, counter)).to eq "computer choice is: " + counter + ", computer wins :("
    end


    it "calculates whether player has won the game" do
      move = "Rock"
      counter = "Scissors"
      expect(game.result(move, counter)).to eq "computer choice is: " + counter + ", you win! :)"
    end
    it "calculates whether player has won the game" do
      move = "Scissors"
      counter = "Paper"
      expect(game.result(move, counter)).to eq "computer choice is: " + counter + ", you win! :)"
    end
    it "calculates whether player has won the game" do
      move = "Paper"
      counter = "Rock"
      expect(game.result(move, counter)).to eq "computer choice is: " + counter + ", you win! :)"
    end


    it "calculates whether player has drawn the game" do
      move = "Rock"
      counter = "Rock"
      expect(game.result(move, counter)).to eq "It's a draw"
    end
  end

end
