require 'game'

describe Game do
  let(:rock_instance) { Game.new("Rock") }
  let(:paper_instance) { Game.new("Paper") }
  let(:scissors_instance) { Game.new("Scissors") }

  it 'sets player_move to the argument on initialize' do
    expect(rock_instance.player_move).to eq("Rock")
  end

  context 'testing outcomes' do

  it 'player rock, cpu scissors, player wins' do
    allow(rock_instance).to receive(:cpu_turn) { 'Scissors' }
    expect(rock_instance.outcome).to eq("Player")
  end

  it 'player rock, cpu papaer, cpu wins' do
    allow(rock_instance).to receive(:cpu_turn) { 'Paper' }
    expect(rock_instance.outcome).to eq("cpu")
  end

  it 'player rock, cpu rock, draw' do
    allow(rock_instance).to receive(:cpu_turn) { 'Rock' }
    expect(rock_instance.outcome).to eq("Draw")
  end

  it 'player scissors, cpu rock, player' do
    allow(paper_instance).to receive(:cpu_turn) { 'Rock' }
    expect(paper_instance.outcome).to eq("Player")
  end

  it 'evaluates outcome' do
    allow(scissors_instance).to receive(:cpu_turn) { 'Paper' }
    expect(scissors_instance.outcome).to eq("Player")
  end

end

end
