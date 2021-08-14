require 'game'

describe Game do
  let(:player) { double Player, name: 'Alice' }
  let(:game) { Game.new(player) }

  it 'is created with a player' do
    expect(game).to have_attributes(:player => player)
  end

  it 'has no winner to start with' do
    expect(game).to have_attributes(:winner => nil)
  end

  context 'when both players make a move' do
    context 'the human player can win' do
      it "human beats rock with paper" do
        game.judge(:paper, :rock)
        expect(game.winner).to eq(game.player.name)
      end

      it "human beats paper with scissors" do
        game.judge(:scissors, :paper)
        expect(game.winner).to eq(game.player.name)
      end

      it "human beats scissors with rock" do
        game.judge(:rock, :scissors)
        expect(game.winner).to eq(game.player.name)
      end
    end

    context 'the computer can win' do
      it "robot beats rock with paper" do
        game.judge(:rock, :paper)
        expect(game.winner).to eq("Robot")
      end

      it "robot beats paper with scissors" do
        game.judge(:paper, :scissors)
        expect(game.winner).to eq("Robot")
      end

      it "robot beats scissors with rock" do
        game.judge(:scissors, :rock)
        expect(game.winner).to eq("Robot")
      end
    end

    context 'the round can end in a draw' do
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
end
