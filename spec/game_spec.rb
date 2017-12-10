require 'game.rb'

describe Game do

  let(:player) { double(:player, score: Player::DEFAULT_SCORE, name: 'TEST', choice: Player::DEFAULT_CHOICE) }
  let(:computer) { double(:computer, score: Computer::DEFAULT_SCORE, name: 'TEST2', choice: Computer::DEFAULT_CHOICE) }
  let(:game) { described_class.new(player, computer) }

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
        expect(game.p1_name).to eq 'TEST'
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
      expect(game.player2).to eq computer
    end

    describe '#p2_score' do
      it 'Should return the score of the second player' do
        expect(game.p2_score).to eq Computer::DEFAULT_SCORE
      end

    end

    describe '#p2_name' do
      it 'Should return the name of the first player' do
        expect(game.p2_name).to eq 'TEST2'
      end

    end

    describe '#p2_choice' do
      it 'Should return the choice of the first player' do
        expect(game.p2_choice).to eq Computer::DEFAULT_CHOICE
      end

    end

  end

end
