require 'game'

describe Game do
  subject(:game) { described_class }
  let(:human) { double('human', update_score: nil, score: nil ) }
  let(:computer) { double('computer', update_score: nil, score: nil ) }
  let(:best_of) { 3 }

  context "game not created" do
    describe '#create' do
      it 'initializes a new game' do
        expect(subject).to receive(:new)
        game.create(human, computer, best_of)
      end
    end
  end

  context 'game created' do
    before { game.create(human, computer, best_of) }
    describe '#initialize' do
      it 'stores human player in instance variable' do
        expect(game.current.human_player).to eq human
      end
      it 'stores computer player in instance variable' do
        expect(game.current.computer_player).to eq computer
      end
    end
    describe '#current' do
      it 'returns the game in progress' do
        expect(game.current).to be_an_instance_of(game)
      end
    end
    describe '#play' do
      it 'returns human instance for human win' do
        expect(game.current.play(Game::CHOICES[0], Game::CHOICES[2])).to eq human
      end
      it 'returns 0 for a draw' do
        expect(game.current.play(Game::CHOICES[0], Game::CHOICES[0])).to eq 0
      end
      it 'returns computer instance for computer win' do
        expect(game.current.play(Game::CHOICES[0], Game::CHOICES[1])).to eq computer
      end
      it 'requests winner to update their score' do
        expect(human).to receive(:update_score)
        game.current.play(Game::CHOICES[0], Game::CHOICES[2])
      end
    end
    describe '#last_winner' do
      it 'returns the latest winner' do
        game.current.play(Game::CHOICES[0], Game::CHOICES[2])
        expect(game.current.last_winner).to eq human
      end
    end
    describe '#score' do
      after { game.current.score }
      it 'requests current human score' do
        expect(human).to receive(:score)
      end
      it 'requests current computer score' do
        expect(computer).to receive(:score)
      end
    end
  end
  context 'game over' do
    before do
      game.create(human, computer, best_of)
      allow(human).to receive(:score) { 2 }
    end
    describe '#over?' do
      it 'confirms when a player has scored enough points to win' do
        expect(game.current.over?).to eq true
      end
    end
    describe '#confirm_winner' do
      it 'updates the winner attribute of current game' do
        game.current.confirm_winner
        expect(game.current.winner).to eq human
      end
    end
  end
end
