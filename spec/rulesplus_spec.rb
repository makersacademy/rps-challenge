require 'rulesplus'

describe RulesPlus do

  subject(:rulesplus) { described_class.new }


  describe '#random_move' do

    it 'returns a random move' do
      expect([:rock, :paper, :scissors, :lizard, :spock]).to include(rulesplus.random_move)
    end

  end

  describe '#calculate_result' do

    context 'when passed in two moves in strings' do

      it 'return win when move 1 beats move 2' do
        expect(rulesplus.calculate_result('rock','lizard')).to eq :win
      end

      it 'return draw when two moves are the same' do
        expect(rulesplus.calculate_result('spock','spock')).to eq :draw
      end

      it 'return lose when move 1 loses to move 2' do
        expect(rulesplus.calculate_result('spock','lizard')).to eq :lose
      end

    end

  end
end