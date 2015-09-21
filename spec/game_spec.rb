require 'game.rb'

describe Game do

  it "game ties if both players have the same hand as rock" do
    player1 = double("player", choice: :rock)
    player2 = double("player", choice: :rock)
    subject = Game.new(player1, player2)
    expect(subject.play).to eq "It's a tie!"
  end

  it "game ties if both players have the same hand as paper" do
    player1 = double("player", choice: :paper)
    player2 = double("player", choice: :paper)
    subject = Game.new(player1, player2)
    expect(subject.play).to eq "It's a tie!"
  end

  it "game ties if both players have the same hand as scissors" do
    player1 = double("player", choice: :scissors)
    player2 = double("player", choice: :scissors)
    subject = Game.new(player1, player2)
    expect(subject.play).to eq "It's a tie!"
  end

  it "player 1 wins if it has a stronger hand using paper" do
    player1 = double("player", choice: :paper)
    player2 = double("player", choice: :rock)
    subject = Game.new(player1, player2)
    expect(subject.play).to eq "You win!"
  end

  it "player 1 wins if it has a stronger hand using rock" do
    player1 = double("player", choice: :rock)
    player2 = double("player", choice: :scissors)
    subject = Game.new(player1, player2)
    expect(subject.play).to eq "You win!"
  end

  it "player 1 wins if it has a stronger hand using scissors" do
    player1 = double("player", choice: :scissors)
    player2 = double("player", choice: :paper)
    subject = Game.new(player1, player2)
    expect(subject.play).to eq "You win!"
  end

  it "player 1 loses if it has a weaker hand with paper" do
    player1 = double("player", choice: :paper)
    player2 = double("player", choice: :scissors)
    subject = Game.new(player1, player2)
    expect(subject.play).to eq "You lost!"
  end

  it "player 1 loses if it has a weaker hand with rock" do
    player1 = double("player", choice: :rock)
    player2 = double("player", choice: :paper)
    subject = Game.new(player1, player2)
    expect(subject.play).to eq "You lost!"
  end

  it "player 1 loses if it has a weaker hand with scissors" do
    player1 = double("player", choice: :paper)
    player2 = double("player", choice: :scissors)
    subject = Game.new(player1, player2)
    expect(subject.play).to eq "You lost!"
  end

end
