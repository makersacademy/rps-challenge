require 'game'

describe Game do
  subject(:rock_paper) {described_class.new("Bob",:rock, :paper)}
  subject(:rock_scissors) {described_class.new("Bob",:rock, :scissors)}
  subject(:paper_rock) {described_class.new("Bob",:paper, :rock)}
  subject(:paper_scissors) {described_class.new("Bob",:paper, :scissors)}
  subject(:scissors_rock) {described_class.new("Bob",:scissors, :rock)}
  subject(:scissors_paper) {described_class.new("Bob",:scissors, :paper)}
  subject(:rock_rock) {described_class.new("Bob",:rock, :rock)}
  subject(:paper_paper) {described_class.new("Bob",:paper, :paper)}
  subject(:scissors_scissors) {described_class.new("Bob",:scissors, :scissors)}

  describe '#player' do
    it 'returns player name' do
      expect(rock_paper.player).to eq "Bob"
    end
  end

  describe '#winner' do
    it 'correctly calculates rock/paper game' do
      expect(rock_paper.winner).to eq "CPU Wins"
    end
    it 'correctly calculates rock/scissors game' do
      expect(rock_scissors.winner).to eq "Bob Wins"
    end
    it 'correctly calculates paper/rock game' do
      expect(paper_rock.winner).to eq "Bob Wins"
    end
    it 'correctly calculates paper/scissors game' do
      expect(paper_scissors.winner).to eq "CPU Wins"
    end
    it 'correctly calculates scissors/rock game' do
      expect(scissors_rock.winner).to eq "CPU Wins"
    end
    it 'correctly calculates scissors/paper game' do
      expect(scissors_paper.winner).to eq "Bob Wins"
    end
    it 'correctly calculates rock/rock game' do
      expect(rock_rock.winner).to eq "Draw"
    end
    it 'correctly calculates paper/paper game' do
      expect(paper_paper.winner).to eq "Draw"
    end
    it 'correctly calculates scissors/scissors game' do
      expect(scissors_scissors.winner).to eq "Draw"
    end
  end
end
