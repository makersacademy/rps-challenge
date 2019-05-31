require './lib/game.rb'
describe Game do
  let(:player1) {spy(:player1)}


  it 'returns player username' do
    subject.add_player(player1)
    subject.playername
    expect(player1).to have_received(:username)
  end

  it  'returns the turn choice' do
    subject.move = 'rock'
    expect(subject.move).to eq('rock')
  end
end
