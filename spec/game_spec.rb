require_relative './../lib/game.rb'

describe Game do
  it "Picks a random move in a game of Rock/Paper/Scissors" do
    subject.computer_move
    expect(["rock", "paper", "scissors"]).to include(subject.chosen_move)
  end
  it "Computes that the player has won when choosing rock over scissors" do
    subject.calculate("rock", "scissors")
    expect(subject.champion).to eq("Player wins!")
  end    
end