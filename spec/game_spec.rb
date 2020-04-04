require 'game'

describe Game do

  let(:game) { Game.new("Rock", "Paper") }

  it 'gives winning move' do
    expect(game.the_winning_move).to eq "Paper"
  end
end
