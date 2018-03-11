require 'game_logic'

describe GameLogic do
  subject(:game_logic) { described_class.new }

  describe '#calculate_win' do

    it 'same number is a draw' do
      expect(subject.calculate_win(3,3)).to eq('draw')
    end

    it 'player wins on one index higher' do
      expect(subject.calculate_win(3,4)).to eq('win')
    end

    it 'player loses on two index higher' do
      expect(subject.calculate_win(0,2)).to eq('lose')
    end

    it 'player wins on three index higher' do
      expect(subject.calculate_win(1,4)).to eq('win')
    end

    it 'player loses on four index higher' do
      expect(subject.calculate_win(3,2)).to eq('lose')
    end

  end

end
