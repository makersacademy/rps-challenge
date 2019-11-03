require 'game'

describe Game do
  game = Game.new

  it 'computer can choose a move' do
    expect(game.computer_move).to eq("Paper")
  end
end
