require 'game'

describe Game do

  it 'has a player 1' do
    expect(subject).to respond_to(:player_1)
  end

  it 'has a player 2' do
    expect(subject).to respond_to(:player_2)
  end

  it { is_expected.to respond_to(:result) }


  xit 'knows if a player has won' do
    subject.player_1.choose('rock')
    subject.player_1.receive('scissors')
    expect(subject.winner).to eq('player 1')
  end

  xit 'creates a player' do
    expect(subject.player_1).to eq (player)
  end
end

#  check what be matcher is as opposed to equal matcher
