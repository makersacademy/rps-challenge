require 'game'

describe Game do

  it "Can change the players names" do
    subject.set_name("Chris")
    expect(subject.player1.name).to eq "Chris"
    expect(subject.player2.name).to eq "Computer"
  end

  it "Can set the thrown hand for each player" do
    subject.thrown_hands("Rock")
    expect(subject.player1.hand).to eq "Rock"
    subject.thrown_hands("Paper", 2)
    expect(subject.player2.hand).to eq "Paper"
  end

  it "Can state the winner out of two players" do
    subject.set_name("JOHN")
    subject.thrown_hands("Rock")
    subject.thrown_hands("Paper", 2)
    expect(subject.winner).to eq "Computer"
    subject.thrown_hands("Rock", 2)
    expect(subject.winner).to eq "Draw!"
    subject.thrown_hands("Scissors", 2)
    expect(subject.winner).to eq "JOHN"
  end
end