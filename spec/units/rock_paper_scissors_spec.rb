require 'rock_paper_scissors'

describe Game do
  it 'can display player 1 winning the game' do
    g = Game.new
    g.player_1_choice = 'rock'
    g.player_2_choice = 'scissors'
    expect(g.outcome).to eq("Player 1 wins")
  end

  it 'can display player 2 winning the game' do
    g = Game.new
    g.player_1_choice = 'paper'
    g.player_2_choice = 'scissors'
    expect(g.outcome).to eq("Player 2 wins")
  end

  it 'can display a draw' do
    g = Game.new
    g.player_1_choice = 'scissors'
    g.player_2_choice = 'scissors'
    expect(g.outcome).to eq("It's a draw")
  end
end
