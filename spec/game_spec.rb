require 'game'

describe Game do

  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { described_class.new(player_1, player_2) }


  it 'recognises when player_1 wins' do
    expect(game.winner("Rock", "Scissors")).to eq(player_1)
  end

  it 'recognises when player_2 wins' do
    expect(game.winner("Paper", "Scissors")).to eq(player_2)
  end

  it 'recognises when its a draw' do
    expect(game.winner("Rock", "Rock")). to eq("Nobody...... It's a draw!")
  end

  it 'can randomly assign a move to the computer' do
    expect(game).to receive(:computer_move).and_return("Rock")
    expect(game.computer_move).to eq("Rock")
  end

end
