require 'game'

describe Game do


  it 'can indentify the winner player' do
    player = double :player, name: 'Player', choice: 'rock'
    comp = double :computer, name: 'Computer', choice: 'scissors'
    expect(subject.winner(player, comp)).to eq 'Player'
  end

  it 'can indentify there is no winner' do
    player = double :player, name: 'Player', choice: 'rock'
    comp = double :computer, name: 'Computer', choice: 'rock'
    expect(subject.winner(player, comp)).to eq 'No winner!'
  end



end