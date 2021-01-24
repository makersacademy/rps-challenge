require 'game.rb'

describe Game do

  let(:player) { double(:player, score: Player::DEFAULT_SCORE, name: 'Dude', choice: Player::DEFAULT_CHOICE, win: 'player is victorious') }
  let(:cpu) { double(:cpu, score: CPU::DEFAULT_SCORE, name: 'Steve', choice: CPU::DEFAULT_CHOICE, win: 'cpu is victorious') }
  let(:game) { described_class.new(player, cpu) }

  describe '#player1' do
    it 'Should return the first player of the game' do
      expect(game.player1).to eq player
    end

    describe '#p1_score' do
      it 'Should return the score of the first player' do
        expect(game.p1_score).to eq Player::DEFAULT_SCORE
      end

    end

    describe '#p1_name' do
      it 'Should return the name of the first player' do
        expect(game.p1_name).to eq 'Dude'
      end

    end

    describe '#p1_choice' do
      it 'Should return the choice of the first player' do
        expect(game.p1_choice).to eq Player::DEFAULT_CHOICE
      end

    end

  end

  describe '#player2' do
    it 'Should return the second player of the game' do
      expect(game.player2).to eq cpu
    end

    describe '#p2_score' do
      it 'Should return the score of the second player' do
        expect(game.p2_score).to eq CPU::DEFAULT_SCORE
      end

    end

    describe '#p2_name' do
      it 'Should return the name of the first player' do
        expect(game.p2_name).to eq 'Steve'
      end

    end

    describe '#p2_choice' do
      it 'Should return the choice of the first player' do
        expect(game.p2_choice).to eq CPU::DEFAULT_CHOICE
      end

    end

  end

  describe '#who_wins' do
    it 'No one wins if both players make same choice' do
      expect(game.who_wins).to eq nil
    end

    it 'Player should win when picking rock and cpu picks scissors' do
      allow(cpu).to receive(:choice) { 'SCISSORS' }
      expect(game.who_wins).to eq player
    end

    it 'Player should win when picking scissors and cpu picks paper' do
      allow(player).to receive(:choice) { 'SCISSORS' }
      allow(cpu).to receive(:choice) { 'PAPER' }
      expect(game.who_wins).to eq player
    end

    it 'Player should win when picking paper and cpu picks rock' do
      allow(player).to receive(:choice) { 'PAPER' }
      expect(game.who_wins).to eq player
    end

    it 'Cpu should win when picking rock and player picks scissors' do
      allow(player).to receive(:choice) { 'SCISSORS' }
      expect(game.who_wins).to eq cpu
    end

    it 'Cpu should win when picking scissors and player picks paper' do
      allow(cpu).to receive(:choice) { 'SCISSORS' }
      allow(player).to receive(:choice) { 'PAPER' }
      expect(game.who_wins).to eq cpu
    end

    it 'Cpu should win when picking paper and player picks rock' do
      allow(cpu).to receive(:choice) { 'PAPER' }
      expect(game.who_wins).to eq cpu
    end

  end

  describe '#win_point' do

    it 'Should determine who is the winner' do
      allow(cpu).to receive(:choice) { 'SCISSORS' }
      expect(game.win_point).to eq 'player is victorious'
      expect(game.win_point).not_to eq 'cpu is victorious'
    end

    it 'Should not delclare a winner when a draw' do
      expect(game.win_point).not_to eq 'player is victorious'
      expect(game.win_point).not_to eq 'cpu is victorious'
    end

  end

end