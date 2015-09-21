require 'game'

describe Game do


  it 'can indentify the winner player' do
    player = double :player, name: 'Player', choice: 'rock'
    allow(player).to receive(:win).and_return('Player')
    comp = double :computer, name: 'Computer', choice: 'scissors'
    subject.add_player(player)
    subject.add_player(comp)
    expect(subject.winner).to eq 'Player'
  end

  it 'can indentify there is no winner' do
    player = double :player, name: 'Player', choice: 'rock'
    comp = double :computer, name: 'Computer', choice: 'rock'
    subject.add_player(player)
    subject.add_player(comp)
    expect(subject.winner).to eq 'No winner!'
  end

  it 'can show score' do
    player = double :player, score: 1
    comp = double :computer, score: 0
    subject.add_player(player)
    subject.add_player(comp)
    expect(subject.score).to eq '1 : 0'
  end

  it 'can add first player' do
    player = double :player, name: 'Player'
    subject.add_player(player)
    expect(subject.player1).to eq player
  end

  it 'can add second player' do
    player1 = double :player, name: 'Player1'
    player2 = double :player, name: 'Player2'
    subject.add_player(player1)
    subject.add_player(player2)
    expect(subject.player2).to eq player2
  end

  it 'does not add the third player' do
    player1 = double :player, name: 'Player1'
    player2 = double :player, name: 'Player2'
    player3 = double :player, name: 'Player3'
    subject.add_player(player1)
    subject.add_player(player2)
    expect(subject.add_player(player3)).to eq nil
  end

end