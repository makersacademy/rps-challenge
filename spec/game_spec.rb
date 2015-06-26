require './lib/game'


describe Game do

  subject { Game.new Player }

  it { is_expected.to respond_to(:initialize_player).with(1).argument }


  it 'cannot return the result of the game if a player has not made a choice' do
    player = double :player, choice: nil
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

  it 'knows if the players have tied' do
    opponent = double :opponent, choice: 'rock'
    player = double :player, choice: 'rock', opponent: opponent
    allow(opponent).to receive(:opponent).and_return(player)
    expect(subject.won_lost_or_tied player).to eq "You've tied"
  end

  it 'knows if a player has won' do
    opponent = double :opponent, choice: 'scissors'
    player = double :player, choice: 'rock', opponent: opponent
    allow(opponent).to receive(:opponent).and_return(player)
    expect(subject.won_lost_or_tied player).to eq "You won! :)"
  end

  it 'knows if a player has lost' do
    opponent = double :opponent, choice: 'paper'
    player = double :player, choice: 'rock', opponent: opponent
    allow(opponent).to receive(:opponent).and_return(player)
    expect(subject.won_lost_or_tied player).to eq "You lost :("
  end

end
