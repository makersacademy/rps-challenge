describe Game do 
  subject(:game) { Game.new("Ollie") }
  # let(game.opposition_choice) {"rock"}
  it 'Returns player name' do 
    expect(game.player_name).to eq "Ollie"
  end
  it 'calculates draw if draw' do
    game.choice = "rock"
    allow(game).to receive(:opposition_choice) { "rock" }
    expect(game.calculate_outcome).to eq "Draw"
  end
  it 'player: rock, computer: paper = lose' do
    game.choice = "rock"
    allow(game).to receive(:opposition_choice) { "paper" }
    expect(game.calculate_outcome).to eq "Lose"
  end
  it 'player: rock, computer: scissors = win' do
    game.choice = "rock"
    allow(game).to receive(:opposition_choice) { "scissors" }
    expect(game.calculate_outcome).to eq "Win"
  end
  it 'player: paper, computer: scissors = lose' do
    game.choice = "paper"
    allow(game).to receive(:opposition_choice) { "scissors" }
    expect(game.calculate_outcome).to eq "Lose"
  end
  it 'player: scissors, computer: paper = win' do
    game.choice = "scissors"
    allow(game).to receive(:opposition_choice) { "paper" }
    expect(game.calculate_outcome).to eq "Win"
  end
end
