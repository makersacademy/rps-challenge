require 'game'

describe Game do

  let(:game) { Game.new(:player1, :player2)}

  it 'Has two players assigned when created' do
    game
    expect(game.instance_variable_get(:@player1)).to eq(:player1)
    expect(game.instance_variable_get(:@player2)).to eq(:player2)
  end

  it 'Can find out who the winner is or if it is a tie' do
  player1 = double ('Player1')
  player2 = double ('Player2')
  allow(player1).to receive(:human_weapon)
  allow(player2).to receive(:computer_weapon)
  expect(game.play_game).to eq player1
  end

end


#expect(object.instance_variable_get(:@person)).to eql(user)
