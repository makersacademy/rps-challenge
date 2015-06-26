require './lib/game'


describe RockPaperScissors do

  subject { RockPaperScissors.new Player }

  it { is_expected.to respond_to(:initialize_player).with(1).argument }


  it 'cannot return the result of the game if a player has not made a choice' do
    player = double :player
    allow(player).to receive(:choice).and_return(nil)
    expect{ subject.won_lost_or_tied player }.to raise_error 'You have to choose between rock, paper or scissors'
  end

  it 'cannot return the result of the game if a player does not have an opponent' do
    player = double :player, choice: 'rock', opponent: nil
    expect{ subject.won_lost_or_tied player }.to raise_error 'Erm, you have no opponent :/'
  end

  it 'cannot return the result of the game if a player\'s opponent has not made a choice' do
    opponent = double :opponent, choice: nil
    player = double :player, choice: 'rock', opponent: opponent
    expect{ subject.won_lost_or_tied player }.to raise_error 'Still waiting for your opponent to decide'
  end

  it 'knows if the game is over' do
    opponent = double :opponent, choice: 'scissors', opponent: player
    player = double :player, choice: 'rock', opponent: opponent
    expect(subject).to be_over
  end

end
