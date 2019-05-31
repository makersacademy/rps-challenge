require './lib/game.rb'
describe Game do
  let(:player1) {spy(:player1)}
  it 'adds user to play' do
    subject.add_player(player1)
    expect(subject).to respond_to(:add_player)
  end

  it 'returns player username' do
    subject.add_player(player1)
    subject.playername
    expect(player1).to have_received(:username)
  end
end
