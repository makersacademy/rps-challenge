require './lib/score.rb'

describe Score do
  let(:winning_score1) { Score.new(:rock, :scissors) }
  let(:winning_score2) { Score.new(:scissors, :paper) }
  let(:winning_score3) { Score.new(:paper, :rock) }
  let(:draw_score1) { Score.new(:rock, :rock) }
  let(:draw_score2) { Score.new(:scissors, :scissors) }
  let(:draw_score3) { Score.new(:paper, :paper) }
  let(:losing_score1) { Score.new(:scissors, :rock) }
  let(:losing_score2) { Score.new(:paper, :scissors) }
  let(:losing_score3) { Score.new(:rock, :paper) }
  it 'has player weapon' do
    expect(winning_score1.player_weapon).to eq :rock
  end

  describe '#calculate' do

    describe 'winning scores' do
      it 'receives rock and scissors and shows winning score' do
        expect(winning_score1.calculate).to eq :win
      end
      it 'receives scissors and paper and shows winning score' do
        expect(winning_score2.calculate).to eq :win
      end
      it 'receives paper and rock and shows winning score' do
        expect(winning_score3.calculate).to eq :win
      end
    end

    describe 'draw scores' do
      it 'receives rock and scissors and shows winning score' do
        expect(draw_score1.calculate).to eq :draw
      end
      it 'receives scissors and paper and shows winning score' do
        expect(draw_score2.calculate).to eq :draw
      end
      it 'receives paper and rock and shows winning score' do
        expect(draw_score3.calculate).to eq :draw
      end
    end

    describe 'losing scores' do
      it 'receives rock and scissors and shows winning score' do
        expect(losing_score1.calculate).to eq :lose
      end
      it 'receives scissors and paper and shows winning score' do
        expect(losing_score2.calculate).to eq :lose
      end
      it 'receives paper and rock and shows winning score' do
        expect(losing_score3.calculate).to eq :lose
      end
    end
  end
end
