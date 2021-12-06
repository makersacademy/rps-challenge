require 'game'

describe Game do

  computer_choice = "rock"

  it 'should recognise the player to win' do
    expect(subject.the_winner("paper", computer_choice)).to  eq "Well Done, you won!"
  end

  it 'should recognise a draw' do
    expect(subject.the_winner("rock", computer_choice)).to  eq "It is a tie"
  end

  it 'the computer choice should be random' do
    expect(["rock", "scissors", "paper"]).to include(subject.computer_random_choice)
  end


end