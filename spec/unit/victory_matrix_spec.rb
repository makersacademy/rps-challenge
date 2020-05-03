require 'victory_matrix'

describe VictoryMatrix do
  describe '#result' do
    it 'returns 2 when the result in a draw' do
      expect(subject.result(0, 0)).to eq(5)
    end

    it 'returns 0 when player 1 wins' do
      expect(subject.result(0, 2)).to eq(0)
    end

    it 'returns 1 when player 2 wins' do
      expect(subject.result(0, 1)).to eq(1)
    end

    it 'returns 0 when player 1 wins with spock vs lizard' do
      expect(subject.result(4, 3)).to eq(0)
    end
  end

  describe '#chocie_to_index' do
    it 'converts rock to 0' do
      expect(subject.choice_to_index('rock')).to eq(0)
    end

    it 'converts paper to 1' do
      expect(subject.choice_to_index('paper')).to eq(1)
    end

    it 'converts scissors to 2' do
      expect(subject.choice_to_index('scissors')).to eq(2)
    end

    it 'conerts spock to 3' do
      expect(subject.choice_to_index('spock')).to eq(3)
    end

    it 'conerts lizard to 4' do
      expect(subject.choice_to_index('lizard')).to eq(4)
    end
  end
end
