require 'game'

describe Game do
  let(:p1) { double Player, name: 'Alice' }
  let(:p2) { double Player, name: 'Bob' }
  let(:game) { Game.new(p1, p2) }

  it 'can be created with two players' do
    expect(game).to have_attributes(:player1 => p1, :player2 => p2)
  end

  it 'has no winner to start with' do
    expect(game).to have_attributes(:winner => nil)
  end

  context 'when both players make a move' do
    it "player 1 beats rock with paper" do
      game.judge(:paper, :rock)
      expect(game.winner).to eq(game.player1)
    end

    it "player 1 beats scissors with rock" do
      game.judge(:rock, :scissors)
      expect(game.winner).to eq(game.player1)
    end

    it "player 2 beats rock with paper" do
      game.judge(:rock, :paper)
      expect(game.winner).to eq(game.player2)
    end

    it "player 2 beats scissors with rock" do
      game.judge(:scissors, :rock)
      expect(game.winner).to eq(game.player2)
    end

    it "both players choosing rock results in a draw" do
      game.judge(:rock, :rock)
      expect(game.winner).to eq(nil)
    end

    it "both players choosing paper results in a draw" do
      game.judge(:paper, :paper)
      expect(game.winner).to eq(nil)
    end

    it "both players choosing scissors results in a draw" do
      game.judge(:scissors, :scissors)
      expect(game.winner).to eq(nil)
    end
  end
end
