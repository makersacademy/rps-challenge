require 'calculator'

describe Calculator do
  subject(:rock_wins) { described_class.new('rock', 'scissors') }
  subject(:paper_wins) { described_class.new('rock', 'paper') }
  subject(:scissors_wins) { described_class.new('scissors', 'paper') }
  subject(:draw) { described_class.new('rock', 'rock') }

  it 'calculates the result of a game' do
    expect(rock_wins.result).to eq :player_1_wins
    expect(paper_wins.result).to eq :player_2_wins
    expect(scissors_wins.result).to eq :player_1_wins
    expect(draw.result).to eq :draw
  end
end
