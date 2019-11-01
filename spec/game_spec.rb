require 'game'

describe Game do
  subject { Game.new("Dave")}

  it 'creates an instance of game' do
    expect(subject).to be_an_instance_of Game
  end

  it 'expects intance to create a player' do
    expect(subject.player1).to eq "Dave"
  end
end