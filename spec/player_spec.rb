require 'player'

describe Player do

  subject(:p1) { described_class.new('Misa') }
  let(:move) { ['ROCK','PAPER','SCISSORS','LIZARD','SPOCK'].sample }

  describe '#initialize' do
    it 'initialises with name' do
      expect(p1.name).to eq('Misa')
    end
    it 'initialises with a score' do
      expect(p1.score).to eq(0)
    end
    it 'initialises with false in_round flag' do
      expect(p1.in_round).to eq(false)
    end
  end

  describe '#choose' do
    it 'remembers players move' do
      expect(p1.choose(move)).to eq(move)
    end
  end

  describe '#move' do
    it 'returns a move chosen by player' do
      p1.choose(move)
      expect(p1.move).to eq(move)
    end
  end

  describe '#choose_random' do
    it 'returns a randomly chosen move' do
      random_move = p1.choose_random
      expect(p1.move).to eq(random_move)
    end
  end

  describe '#chosen?' do
    it 'returns false if the player hasn\'t chosen a move' do
      expect(p1.chosen?).to eq(false)
    end
    it 'returns true if the player has chosen a move' do
      p1.choose(move)
      expect(p1.chosen?).to eq(true)
    end
  end

  describe '#reset_choice' do
    it 'resets the choice to nil' do
      p1.choose(move)
      p1.reset_choice
      expect(p1.move).to eq(nil)
    end
  end

  describe '#gain_score' do
    it 'adds a point to the player\'s score' do
      p1.gain_score
      expect(p1.score).to eq(1)
    end
  end

  describe '#enter_round' do
    it 'changes in_round flag to true' do
      p1.enter_round
      expect(p1.in_round).to eq(true)
    end
  end

  describe '#exit_round' do
    it 'changes in_round flag to false' do
      p1.enter_round
      p1.exit_round
      expect(p1.in_round).to eq(false)
    end
  end
end
