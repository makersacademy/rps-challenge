require './lib/player'

describe Player do

  let(:player) { Player.new }

  it 'has a name' do
    player.name = 'Nicola'
    expect(player.name).to eq 'Nicola'
  end

  it 'can choose rock paper or scissors' do
    player.choice  = 'rock'
    expect(player.choice).to eq 'rock'
  end

  it 'connot tie if she has not made a choice' do
    expect { player.tied? }.to raise_error 'You have to choose between rock, paper or scissors'
  end

  it 'cannot tie if she does not have an opponent' do
    player.choice  = 'rock'
    expect { player.tied? }.to raise_error 'Erm, you have no opponent :/'
  end

  it 'cannot tie if the opponent has not made a choice' do
    player.choice  = 'rock'
    player2 = Player.new
    player.opponent = player2
    expect { player.tied? }.to raise_error 'Still waiting for your opponent to decide'
  end

  it 'knows if she has tied' do
    player.choice  = 'rock'
    player2 = Player.new
    player.opponent = player2
    player2.choice = 'rock'
    expect(player).to be_tied
  end

  it 'connot win if she has not made a choice' do
    expect { player.winner? }.to raise_error 'You have to choose between rock, paper or scissors'
  end

  it 'cannot win if she does not have an opponent' do
    player.choice  = 'rock'
    expect { player.winner? }.to raise_error 'Erm, you have no opponent :/'
  end

  it 'cannot win if the opponent has not made a choice' do
    player.choice  = 'rock'
    player2 = Player.new
    player.opponent = player2
    expect { player.winner? }.to raise_error 'Still waiting for your opponent to decide'
  end

  it 'knows if she has won' do
    player.choice  = 'rock'
    player2 = Player.new
    player.opponent = player2
    player2.choice = 'scissors'
    expect(player).to be_winner
  end

end
