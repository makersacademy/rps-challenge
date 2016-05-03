require 'rules'

describe Rules do

  subject(:rules) { described_class.new }


  describe '#random_move' do

    it 'returns a random move' do
      expect([:rock, :paper, :scissors]).to include(rules.random_move)
    end

  end

  describe '#calculate_result' do

    context 'when passed in two moves in strings' do

      it 'return win when move 1 beats move 2' do
        expect(rules.calculate_result('rock','scissors')).to eq :win
      end

      it 'return draw when two moves are the same' do
        expect(rules.calculate_result('rock','rock')).to eq :draw
      end

      it 'return lose when move 1 loses to move 2' do
        expect(rules.calculate_result('rock','paper')).to eq :lose
      end

    end

  end

end