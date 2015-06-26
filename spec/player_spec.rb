require './lib/player'

describe Player do

  let(:player) { Player.new 'Nicola' }

  it 'has a name' do
    expect(player.name).to eq 'Nicola'
  end

  it 'can choose rock paper or scissors' do
    expect(player.choose_rock_paper_or_scissors 'rock').to eq 'rock'
  end

  it 'cannot win if she does not have an opponent' do
    expect { player.winner? }.to raise_error 'Erm, you have no opponent :/'
  end

  xit 'knows if it has won' do
    player.choose_rock_paper_or_scissors 'rock'
    player2 = Player.new 'Charlie'
    player.opponent = player2
    player2.choose_rock_paper_or_scissors 'scissors'
    expect(player).to be_winner
  end

end
