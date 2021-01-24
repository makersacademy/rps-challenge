require 'game.rb'

describe Game do

  let(:player) { double(:player, score: Player::DEFAULT_SCORE, name: 'Dude', choice: Player::DEFAULT_CHOICE) }
  let(:cpu) { double(:cpu, score: CPU::DEFAULT_SCORE, name: 'Steve', choice: CPU::DEFAULT_CHOICE) }
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

end