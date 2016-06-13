require 'game'

describe Game do
  subject(:rock_paper) {described_class.new(:rock, :paper)}
  subject(:rock_scissors) {described_class.new(:rock, :scissors)}
  subject(:paper_rock) {described_class.new(:paper, :rock)}
  subject(:paper_scissors) {described_class.new(:paper, :scissors)}
  subject(:scissors_rock) {described_class.new(:scissors, :rock)}
  subject(:scissors_paper) {described_class.new(:scissors, :paper)}
  subject(:rock_rock) {described_class.new(:rock, :rock)}
  subject(:paper_paper) {described_class.new(:paper, :paper)}
  subject(:scissors_scissors) {described_class.new(:scissors, :scissors)}

  describe '#winner' do
    it 'correctly calculates rock/paper game' do
      expect(rock_paper.winner).to eq :lose
    end
    it 'correctly calculates rock/scissors game' do
      expect(rock_scissors.winner).to eq :win
    end
    it 'correctly calculates paper/rock game' do
      expect(paper_rock.winner).to eq :win
    end
    it 'correctly calculates paper/scissors game' do
      expect(paper_scissors.winner).to eq :lose
    end
    it 'correctly calculates scissors/rock game' do
      expect(scissors_rock.winner).to eq :lose
    end
    it 'correctly calculates scissors/paper game' do
      expect(scissors_paper.winner).to eq :win
    end
    it 'correctly calculates rock/rock game' do
      expect(rock_rock.winner).to eq :draw
    end
    it 'correctly calculates paper/paper game' do
      expect(paper_paper.winner).to eq :draw
    end
    it 'correctly calculates scissors/scissors game' do
      expect(scissors_scissors.winner).to eq :draw
    end
  end
end
