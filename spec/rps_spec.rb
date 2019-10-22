describe Rps do
  subject(:rock) { described_class.new("rock", "rock") }
  subject(:rock2) { described_class.new("rock", "paper") }
  subject(:rock3) { described_class.new("rock", "scissors") }
  subject(:paper) { described_class.new("paper", "paper") }
  subject(:paper2) { described_class.new("paper", "rock") }
  subject(:paper3) { described_class.new("paper", "scissors") }
  subject(:scissors) { described_class.new("scissors", "scissors") }
  subject(:scissors2) { described_class.new("scissors", "rock") }
  subject(:scissors3) { described_class.new("scissors", "paper") }
  describe '#rock' do
    it 'rocks vs rock end in tie' do
      expect(rock.rock).to eq("Tie! no one wins")
    end
    it 'rock beats scissors' do
      expect(rock3.rock).to eq("Player wins")
    end
    it 'rock loses to paper' do
      expect(rock2.rock).to eq("Computer wins")
    end
  end
  describe '#paper' do
    it 'paper vs paer end in tie' do
      expect(paper.paper).to eq("Tie! no one wins")
    end
    it 'paper beats rock' do
      expect(paper2.paper).to eq("Player wins")
    end
    it 'paper loses to scissors' do
      expect(paper3.paper).to eq("Computer wins")
    end
  end
  describe '#scissors' do
    it 'scissors vs scissors end in tie' do
      expect(scissors.scissors).to eq("Tie! no one wins")
    end
    it 'scissors loses to rock' do
      expect(scissors2.scissors).to eq("Computer wins")
    end
    it 'scissors beats paper' do
      expect(scissors3.scissors).to eq("Player wins")
    end
  end
  describe '#match' do
    it 'when "rock" entered goes to rock method' do
      expect(rock).to receive(:rock).and_return('Tie! no one wins')
      rock.rock
    end
    it 'when "paper" entered goes to paper method' do
      expect(paper).to receive(:paper).and_return "Tie! no one wins"
      paper.paper
    end
    it 'when "scissors" entered goes to scissors method' do
      allow(scissors).to receive(:scissors).and_return "Tie! no one wins"
      scissors.scissors
    end
  end

end
