require 'game'

describe Game do


  it 'can indentify the winner player' do
    player = double :player, name: 'Player', choice: 'rock'
    allow(player).to receive(:win).and_return('Player')
    comp = double :computer, name: 'Computer', choice: 'scissors'
    expect(subject.winner(player, comp)).to eq 'Player'
  end

  it 'can indentify there is no winner' do
    player = double :player, name: 'Player', choice: 'rock'
    comp = double :computer, name: 'Computer', choice: 'rock'
    expect(subject.winner(player, comp)).to eq 'No winner!'
  end

  it 'can show score' do
    player = double :player, score: 1
    comp = double :computer, score: 0
    expect(subject.score(player, comp)).to eq '1 : 0'
  end


end