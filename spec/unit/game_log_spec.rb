require 'game_log'

describe GameLog do
  describe '#add_game' do
    it 'adds a game to the @games instance variable' do
      expect { subject.add_game("rock", "scissors", :win) }.to change { subject.games.length }.by 1
    end
  end
  describe '#show_game' do
    it 'shows what moves were picked' do
      subject.add_game("rock", "scissors", :win)
      expect(subject.show_game).to include("You picked rock, the computer picked scissors")
    end
  end
  describe '#score' do
    it 'changes if player wins' do
      expect { subject.add_game("rock", "scissors", :win) }.to change { subject.score[:player] }.by 1
    end
    it 'changes if player loses' do
      expect { subject.add_game("scissors", "rock", :loss) }.to change { subject.score[:computer] }.by 1
    end
  end

  describe '#game_over?' do
    it 'returns true if player has 10 wins' do
      10.times { subject.add_game("rock", "scissors", :win) }
      expect(subject.game_over?).to be true
    end
    it 'returns true if computer has 10 wins' do
      10.times { subject.add_game("scissors", "rock", :loss) }
      expect(subject.game_over?).to be true
    end
    it 'returns false if no one is at 10' do
      5.times { subject.add_game("scissors", "rock", :loss) }
      expect(subject.game_over?).to be nil
    end
  end
end
