require 'game'

describe Game do

  it 'has a player 1' do
    expect(subject).to respond_to(:player_1)
  end

  it 'creates a player' do
    expect(subject.player_1).to be player
  end
end

#  check what be matcher is as opposed to equal matcher
