require 'game'

describe Game do
  subject { Game.new("Dave")}

  it 'creates an instance of game' do
    expect(subject).to be_an_instance_of Game
  end

  it 'expects instance to create a player1 & player2' do
    expect(subject.player1).to eq "Dave"
    expect(subject.player2).to eq "Computer"
  end
end