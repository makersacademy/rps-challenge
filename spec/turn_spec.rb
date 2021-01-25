describe Turn do
  subject(:turn) { Turn.new("rock") }
  it 'calculates draw if draw' do
    allow(turn).to receive(:computer_choice) { "rock" }
    expect(turn.calculate_outcome).to eq "Draw"
  end
  it 'player: rock, computer: paper = lose' do
    allow(turn).to receive(:computer_choice) { "paper" }
    expect(turn.calculate_outcome).to eq "Lose"
  end
  it 'player: rock, computer: scissors = win' do
    allow(turn).to receive(:computer_choice) { "scissors" }
    expect(turn.calculate_outcome).to eq "Win"
  end
  it 'player: paper, computer: scissors = lose' do
    turn2 = Turn.new("paper")
    allow(turn2).to receive(:computer_choice) { "scissors" }
    expect(turn2.calculate_outcome).to eq "Lose"
  end
  it 'player: scissors, computer: paper = win' do
    turn3 = Turn.new("scissors")
    allow(turn3).to receive(:computer_choice) { "paper" }
    expect(turn3.calculate_outcome).to eq "Win"
  end
end
