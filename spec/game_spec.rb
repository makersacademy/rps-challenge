require 'game'

describe Game do

  let(:player1) { double :player, choose: :rock}
  let(:computer1) {double :computer, choose: :paper}

  it 'player can beat the computer' do
    game = Game.new(player1, computer1)
    expect(game.play :rock).to eq 'You lose!'
  end



end
