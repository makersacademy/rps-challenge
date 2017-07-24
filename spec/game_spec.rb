require 'game'

describe Game do
  subject(:game) { described_class }
  let(:player_1) { double('player', update_score: nil, score: nil, name: nil) }
  let(:player_2) { double('player', update_score: nil, score: nil, name: nil) }
  let(:messager) { double('messager', update_round_winner: nil, update_choice_messages: nil) }
  let(:best_of) { 3 }

  context "game not created" do
    describe '#create' do
      it 'initializes a new game' do
        expect(subject).to receive(:new)
        game.create(player_1, player_2, :single, best_of, messager)
      end
    end
  end

  context 'game created' do
    before { game.create(player_1, player_2, :single, best_of, messager) }
    describe '#current' do
      it 'returns the game in progress' do
        expect(game.current).to be_an_instance_of(game)
      end
    end
    describe '#play' do
      it 'returns player_1 for player 1 win' do
        expect(game.current.play(Game::CHOICES[0], Game::CHOICES[2])).to eq player_1
      end
      it 'returns 0 for a draw' do
        expect(game.current.play(Game::CHOICES[0], Game::CHOICES[0])).to eq 0
      end
      it 'returns player_2 for player 2 win' do
        expect(game.current.play(Game::CHOICES[0], Game::CHOICES[1])).to eq player_2
      end
      it 'requests winner to update their score' do
        expect(player_1).to receive(:update_score)
        game.current.play(Game::CHOICES[0], Game::CHOICES[2])
      end
      it 'requests messager to update round winner message' do
        expect(messager).to receive(:update_round_winner)
        game.current.play(Game::CHOICES[0], Game::CHOICES[2])
      end
    end
    describe '#last_winner' do
      it 'returns the latest winner' do
        game.current.play(Game::CHOICES[0], Game::CHOICES[2])
        expect(game.current.last_winner).to eq player_1
      end
    end
  end
  context 'game over' do
    before do
      game.create(player_1, player_2, :single, best_of, messager)
      allow(player_1).to receive(:score) { 2 }
    end
    describe '#over?' do
      it 'confirms when a player has scored enough points to win' do
        expect(game.current.over?).to eq true
      end
    end
    describe '#confirm_winner' do
      it 'updates the winner attribute of current game' do
        game.current.confirm_winner
        expect(game.current.winner).to eq player_1
      end
    end
  end
end
