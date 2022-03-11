require 'game'

describe Game do
  it "returns a random string from array " do
    Game.machine_pick 
  end
  # player1 = Player.new("Tinda")
  # game = Game.new(player1)


  # describe ".p1_pick" do
  #   it "returns a 'Rock' for Player1" do
  #     allow(game).to receive(:rand).and_return 1
  #     expect(game.p1_pick).to eq "Rock"
  #   end

  # end

  # describe ".p2_pick" do
  #   it "returns a 'Paper' for Player2" do
  #     allow(game).to receive(:rand).and_return 2
  #     expect(game.p2_pick).to eq "Paper"
  #   end

  # end

  # describe ".winner" do
  #   it "returns Player 2 as the winner of the game" do
  #     allow(game).to receive(:p1_pick).and_return "Rock"
  #     allow(game).to receive(:rand).and_return 2
  #     game.p2_pick
  #     expect(game.winner).to eq "The Machine wins!"
  #   end

  #   it "returns Player 1 as the winner of the game" do
  #     allow(game).to receive(:p1_pick).and_return "Paper"
  #     allow(game).to receive(:p2_pick).and_return "Rock"
  #     expect(game.winner).to eq "Tinda you win!"
  #   end

  #   it "returns tie if p1_pick == p2_pick" do
  #     allow(game).to receive(:p1_pick).and_return "Paper"
  #     allow(game).to receive(:p2_pick).and_return "Paper"
  #     expect(game.winner).to eq "You Tie!"
  #   end

  # end



end