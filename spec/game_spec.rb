require 'spec_helper'

describe Game do

  subject(:game) { Game.new(player1, player2) }
  let(:player1) { Player.new('Ali') }
  let(:player2) { Player.new('Chet') }

  describe '#players' do
    it "retrieves the first player" do
      expect(game.player_1).to eq player1
    end

    it "retrieves the last player" do
      expect(game.player_2).to eq player2
    end
  end

  describe '#player_1_move' do
    it "text" do

    end
  end

  describe '#player_2_move' do
    it "should output :rock, :paper or :scissors at random" do
      expect([:rock, :paper, :scissors]).to include(game.player_2_move)
    end
  end

  describe '#player_1_rock' do
    it "should give a draw output when both player 1 and 2 both choose :rock" do
      game.stub(:player_2_move) {:rock}
      expect(game.player_1_move(:rock)).to eq "Both picked rock - DRAW"
    end

    it "should output player 2 won if they chose :paper" do
      game.stub(:player_2_move) {:paper}
      expect(game.player_1_move(:rock)).to eq "Chet has won - PAPER beats ROCK"
    end

    it "should output player 1 won if the opponent chose :scissors" do
      game.stub(:player_2_move) {:scissors}
      expect(game.player_1_move(:rock)).to eq "Ali has won - ROCK beats SCISSORS"
    end
  end

  describe '#player_1_paper' do
    it "should output player 1 won if the opponent chose :rock" do
      game.stub(:player_2_move) {:rock}
      expect(game.player_1_move(:paper)).to eq "Ali has won - PAPER beats ROCK"
    end

    it "should give a draw output when both player 1 and 2 both choose :paper" do
      game.stub(:player_2_move) {:paper}
      expect(game.player_1_move(:paper)).to eq "Both picked paper - DRAW"
    end

    it "should output player 2 won if they chose :scissors" do
      game.stub(:player_2_move) {:scissors}
      expect(game.player_1_move(:paper)).to eq "Chet has won - SCISSORS beats PAPER"
    end
  end

  describe '#player_1_scissors' do
    it "should output player 2 won if they chose :rock" do
      game.stub(:player_2_move) {:rock}
      expect(game.player_1_move(:scissors)).to eq "Chet has won - ROCK beats SCISSORS"
    end

    it "should output player 1 won if the opponent chose :paper" do
      game.stub(:player_2_move) {:paper}
      expect(game.player_1_move(:scissors)).to eq "Ali has won - SCISSORS beats PAPER"
    end

    it "should give a draw output when both player 1 and 2 both choose :paper" do
      game.stub(:player_2_move) {:scissors}
      expect(game.player_1_move(:scissors)).to eq "Both picked scissors - DRAW"
    end
  end

  describe '#reset_score' do
    it "resets the games played when used" do
      game.player_1_move(:rock)
      game.reset_score
      expect(game.played_games).to eq 0
    end

    it "resets the player 1 score when used" do
      game.player_1_move(:rock)
      game.reset_score
      expect(game.player_1_score).to eq 0
    end

    it "resets the player 2 score when used" do
      game.player_1_move(:rock)
      game.reset_score
      expect(game.player_2_score).to eq 0
    end

    describe '#player_1_won' do
      it "should increment player 1 score if they win" do
        game.stub(:player_2_move) {:scissors}
        game.player_1_move(:rock)
        expect(game.player_1_score).to eq 1
      end
    end

    describe '#player_2_won' do
      it "should increment player 2 score if they win" do
        game.stub(:player_2_move) {:scissors}
        game.player_1_move(:paper)
        expect(game.player_2_score).to eq 1
      end
    end

    describe '#game_played' do
      it "should increment games played whenever one is played" do
        game.stub(:player_2_move) {:scissors}
        game.player_1_move(:paper)
        expect(game.played_games).to eq 1
      end
    end
  end
end
