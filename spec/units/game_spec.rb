require 'game'

describe Game do
  let(:rock_instance) { Game.new("Rock") }
  let(:paper_instance) { Game.new("Paper") }
  let(:scissors_instance) { Game.new("Scissors") }

  let(:multi_instance) { Game.new("Scissors", "Paper")}

  it 'sets player_move to the argument on initialize' do
    expect(rock_instance.player_move).to eq("Rock")
  end

  context 'testing single player outcomes' do

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

  context 'multiplayer' do

    it 'sets cpu_move to player 2 input when given a second argument' do
      expect(multi_instance.cpu_move).to eq("Paper")
    end

    it 'returns player 1 when player 1 wins' do
      expect(multi_instance.outcome).to eq("Player1")
    end

    it 'returns player 2 when player 2 wins' do
      expect(Game.new("Paper", "Scissors").outcome).to eq("Player2")
    end

    it 'returns draw when player 1 & 2 have the same score' do
      expect(Game.new("Paper", "Scissors").outcome).to eq("Player2")
    end

  end

end
