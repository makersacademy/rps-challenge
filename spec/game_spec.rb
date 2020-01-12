require './lib/game_engine'

describe GameEngine do
  it 'returns an instance of itself' do
    game_engine = GameEngine.new(guess1: 'Paper', computer: 'Rock')
    expect(game_engine).to be_instance_of(GameEngine)
  end

  it 'returns player 1 as winner' do
    p_1_winner = GameEngine.new(guess1: 'Rock', computer: 'Paper')
    expect(p_1_winner.winner_is).to eq('Player 1 Wins')
  end

  it 'returns player 2 as winner' do
    p_2_winner = GameEngine.new(guess1: 'Paper', computer: 'Rock')
    expect(p_2_winner.winner_is).to eq('Player 2 Wins')
  end

  it 'returns a tie' do
    tie = GameEngine.new(guess1: 'Rock', computer: 'Rock')
    expect(tie.winner_is).to eq('Sorry it was a Tie!')
  end
end