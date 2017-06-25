require 'game'

describe Game do
  let(:rock) do
    rock = double(:rock)
    allow(rock).to receive :<=> { 1 }
    rock
  end

  let(:scissors) do
    scissors = double(:scissors)
    allow(scissors).to receive :<=> { -1 }
    scissors
  end

  let(:paper) do
    paper = double(:paper)
    allow(paper).to receive :<=> { 0 }
    paper
  end

  let(:player1) do
    player1 = double(:player1)
    allow(player1).to receive(:name) { "Tom" }
    player1
  end

  let(:player2) do
    player2 = double(:player2)
    allow(player2).to receive(:name) { "the Computer" }
    player2
  end

  let(:game) { described_class.new(player1, player2) }

  describe 'Initialization' do
    it 'registers player 1' do
      expect(game.player1.name).to eq "Tom"
    end

    it 'registers player 2' do
      expect(game.player2.name).to eq "the Computer"
    end
  end

  describe '#result' do
    it 'responds to result' do
      expect(game).to respond_to(:result)
    end

    it 'returns :win when player 1 wins' do
      expect(game.result(rock, scissors)).to eq :win
    end

    it 'returns :lose when player 1 loses' do
      expect(game.result(scissors, rock)).to eq :lose
    end

    it 'returns 0 on a draw' do
      expect(game.result(paper, paper)).to eq :draw
    end
  end

  describe 'Class Methods' do
    describe '#self.create' do
      it 'can create itself' do
        expect(Game.create(player1, player2)).to be_a Game
      end
    end

    describe '#self.instance' do
      it 'can access an instance of Game' do
        test_game = Game.create(player1, player2)
        expect(Game.instance).to eq test_game
      end
    end
  end
end
