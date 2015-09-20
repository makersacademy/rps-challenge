require 'game.rb'

describe Game do

  it "game ties if both players have the same hand" do
    player1 = double("player", choice: :rock)
    player2 = double("player", choice: :rock)
    subject = Game.new(player1, player2)
    expect(subject.play).to eq "It's a tie!"
  end

  it "player 1 wins if it has a stronger hand" do
    player1 = double("player", choice: :paper)
    player2 = double("player", choice: :rock)
    subject = Game.new(player1, player2)
    expect(subject.play).to eq "You win!"
  end

  it "player 2 wins if it has a stronger hand" do
    player1 = double("player", choice: :paper)
    player2 = double("player", choice: :scissors)
    subject = Game.new(player1, player2)
    expect(subject.play).to eq "You lost!"
  end

end
