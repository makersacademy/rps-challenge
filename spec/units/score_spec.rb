require 'score'

describe Score do
  subject(:p1_score) { Score.new }
  it 'initializes with a zero score' do
    expect(p1_score.score).to eq 0
  end

  describe '#increase' do
    it 'increases the score by 1' do
      expect { p1_score.increase }.to change { p1_score.score }.by(1)
    end
  end

  describe '#reset' do
    it 'resets the score to zero' do
      p1_score.increase
      expect { p1_score.reset }.to change { p1_score.score }.by(-1)
    end
  end
end
