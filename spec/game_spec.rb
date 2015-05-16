require 'game'

describe Game do

  let(:game) { Game.new(:player1, :player2)}

  it 'Has two players assigned when created' do
    game
    expect(game.instance_variable_get(:@player1)).to eq(:player1)
    expect(game.instance_variable_get(:@player2)).to eq(:player2)
  end

  it 'Can find out who the winner is' do
    player1 = double('Player1')
    player2 = double('Player2')
    expect(player1).to receive(:human_weapon).and_return("Rock")
    expect(player2).to receive(:weapon).and_return("Paper")
    player1.human_weapon
    player2.weapon
  end
end
