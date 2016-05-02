require 'game'

describe Game do

  subject(:game)          { described_class.new(player1, player2)}
  let(:player1)           { double(:player1) }
  let(:player2)           { double(:player2) }

  describe '#result' do
    it 'shows player 1 to be the winner' do
      allow(player1).to receive(:name).and_return "Player1"
      allow(player1).to receive(:win_point)
      expect(game.result("paper","rock")).to eq "Player1 wins! Paper beats Rock"
    end

    it 'shows player 2 to be the winner' do
      allow(player2).to receive(:name).and_return "Player2"
      allow(player2).to receive(:win_point)
      expect(game.result("rock","paper")).to eq "Player2 wins! Paper beats Rock"
    end

    it 'shows a draw' do
      expect(game.result("rock","rock")).to eq "Draw! Rock draws Rock"
    end
  end

  describe '#increase score' do
    it 'shows player 1 to be the winner' do
      allow(player1).to receive(:win_point)
      game.increase_score(player1)
      expect(player1).to have_received(:win_point)
    end

    it 'shows player 1 to be the winner' do
      expect(player1).to receive(:win_point)
      game.increase_score(player1)
    end
  end

  describe '#random' do
    it 'random choice is made' do
      allow(game).to receive(:random).and_return "rock"
      expect(game.random).to eq "rock"
    end
  end

end