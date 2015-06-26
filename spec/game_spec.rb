require './lib/game'


describe RockPaperScissors do

  # let(:player1) { double :player , new: nil, opponent: player2}
  # let(:player2) { double :player , new: nil, opponent: player1}
  subject { RockPaperScissors.new Player }

  it { is_expected.to respond_to(:initialize_player).with(1).argument }


  it 'cannot return the result of the game if a player has not made a choice' do
    player = double :player
    allow(player).to receive(:choice).and_return(nil)
    expect{ subject.won_lost_or_tied player }.to raise_error 'You have to choose between rock, paper or scissors'
  end

end
