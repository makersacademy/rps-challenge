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
end
