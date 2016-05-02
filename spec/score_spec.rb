require 'score'

describe Score do

  subject(:score) { described_class.new }
  let(:game) { double :game }

  context 'player1' do
    it 'can add points to a total score' do
      score.add
      expect(score.total).to eq 1
    end

    it 'has an initial score of 0' do
      expect(score.total).to eq 0
    end
  end

  context 'computer' do
    it 'can add points to a total score' do
      score.comp_add
      expect(score.comp_total).to eq 1
    end

    it 'has an initial score of 0' do
      expect(score.comp_total).to eq 0
    end
  end

    context '#reset' do
      it 'sets both scores back to START_SCORE' do
        score.add
        score.comp_add
        score.reset
        expect(score.total).to eq Score::START_SCORE
        expect(score.comp_total).to eq Score::START_SCORE
      end
    end

end