require 'game'

describe Game do
  let(:single_instance) { Game.new("Tristan", "") }
  let(:multi_instance) { Game.new("Tristan", "James") }

  it 'sets player_name to the argument on initialize' do
    expect(single_instance.player1_name).to eq("Tristan")
  end

  context 'testing single player outcomes' do

    it 'player rock, cpu scissors, player wins' do
      allow(single_instance).to receive(:cpu_turn) { 'Scissors' }
      single_instance.p1_move("Rock")
      expect(single_instance.outcome).to eq("Player1")
    end

    it 'player rock, cpu papaer, cpu wins' do
      allow(single_instance).to receive(:cpu_turn) { 'Paper' }
      single_instance.p1_move("Rock")
      expect(single_instance.outcome).to eq("Player2")
    end

    it 'player rock, cpu rock, draw' do
      allow(single_instance).to receive(:cpu_turn) { 'Rock' }
      single_instance.p1_move("Rock")
      expect(single_instance.outcome).to eq("Draw")
    end

    it 'player paper, cpu rock, player' do
      allow(single_instance).to receive(:cpu_turn) { 'Rock' }
      single_instance.p1_move("Paper")
      expect(single_instance.outcome).to eq("Player1")
    end

    it 'evaluates outcome' do
      allow(single_instance).to receive(:cpu_turn) { 'Paper' }
      single_instance.p1_move("Scissors")
      expect(single_instance.outcome).to eq("Player1")
    end

  end

  context 'multiplayer' do

    it 'sets player2 name to player 2 input when given a second argument' do
      expect(multi_instance.player2_name).to eq("James")
    end

    it 'returns player 1 when player 1 wins' do
      multi_instance.p1_move("Scissors")
      multi_instance.p2_move("Paper")
      expect(multi_instance.outcome).to eq("Player1")
    end

    it 'returns player 2 when player 2 wins' do
      multi_instance.p1_move("Scissors")
      multi_instance.p2_move("Rock")
      expect(multi_instance.outcome).to eq("Player2")
    end

    it 'returns draw when player 1 & 2 have the same score' do
      multi_instance.p1_move("Paper")
      multi_instance.p2_move("Scissors")
      expect(multi_instance.outcome).to eq("Player2")
    end

  end

end
