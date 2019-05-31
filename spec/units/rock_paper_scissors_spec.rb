require 'rock_paper_scissors'

describe Game do
  it 'can display who wins the game' do
    g = Game.new
    g.player_1_choice = 'rock'
    g.player_2_choice = 'scissors'
    expect(g.outcome).to eq("Player 1 wins")
  end
end
