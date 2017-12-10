require 'game.rb'

describe Game do

  let(:player) { double(:player, score: Player::DEFAULT_SCORE, name: 'TEST', choice: Player::DEFAULT_CHOICE, win: 'player won!') }
  let(:computer) { double(:computer, score: Computer::DEFAULT_SCORE, name: 'TEST2', choice: Computer::DEFAULT_CHOICE, win: 'computer won!') }
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

  describe '#determine_winner' do
    it 'Should have no winner if both players make same choice' do
      expect(game.determine_winner).to eq nil
    end

    it 'Player should win when picking rock and computer picks scissors' do
      allow(computer).to receive(:choice) { 'SCISSORS' }
      expect(game.determine_winner).to eq player
    end

    it 'Player should win when picking scissors and computer picks paper' do
      allow(player).to receive(:choice) { 'SCISSORS' }
      allow(computer).to receive(:choice) { 'PAPER' }
      expect(game.determine_winner).to eq player
    end

    it 'Player should win when picking paper and computer picks rock' do
      allow(player).to receive(:choice) { 'PAPER' }
      expect(game.determine_winner).to eq player
    end

    it 'Computer should win when picking rock and player picks scissors' do
      allow(player).to receive(:choice) { 'SCISSORS' }
      expect(game.determine_winner).to eq computer
    end

    it 'Computer should win when picking scissors and player picks paper' do
      allow(computer).to receive(:choice) { 'SCISSORS' }
      allow(player).to receive(:choice) { 'PAPER' }
      expect(game.determine_winner).to eq computer
    end

    it 'Computer should win when picking paper and player picks rock' do
      allow(computer).to receive(:choice) { 'PAPER' }
      expect(game.determine_winner).to eq computer
    end

  end

  describe '#win_point' do

    it 'Should carry out win method on winner' do
      allow(computer).to receive(:choice) { 'SCISSORS' }
      expect(game.win_point).to eq 'player won!'
      expect(game.win_point).not_to eq 'computer won!'
    end

    it 'Should not carry out win point on either player when a draw' do
      expect(game.win_point).not_to eq 'player won!'
      expect(game.win_point).not_to eq 'computer won!'
    end
    
  end

end
