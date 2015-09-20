require 'game'

describe Game do
  let(:game){described_class.new}

  it 'has a set of rules' do
    expect(game).to respond_to(:rules)
  end
  
  it 'has a set of shapes' do
    expect(game).to respond_to(:shapes)
  end

  describe '#result' do
    it 'is expected to keep score' do
      game.result('spock', 'scissors')
      game.result('spock', 'paper')
      expect(game.score).to eq [1, 1]
    end

    it 'knows if outcome is a tie' do
      expect(game.result('spock', 'spock')).to eq 'TIE!'
    end
  end
end
