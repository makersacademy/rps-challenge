require "judge.rb"

describe Judge do

  let(:john){double :john, :get_score => 10, :get_move => "rock"}
  let(:jane){double :jane, :get_score => 20, :get_move => "paper"}
  let(:jack){double :jack, :get_score => 10, :get_move => "scissors"}

  subject(:judge){described_class.new()}

  context "Round Judging" do

    it "reads file to get the valid moves" do
      expect(judge.moves.length).to be >= 3
    end

    it "raises an error of tie if all moves are played: scissor / rock / paper" do
      expect{judge.decide_round_winner([jack,john,jane])}.to raise_error("No winner")
    end

    it "check round winner: rock / paper" do
      expect(judge.decide_round_winner([john,jane])).to eq [jane]
    end

    it "check round winner: paper / scissor" do
      expect(judge.decide_round_winner([jane,jack])).to eq [jack]
    end

    it "check round winner: scissor / rock" do
      expect(judge.decide_round_winner([jack,john])).to eq [john]
    end

  end

  context "Game Judging" do

    it "check GAME winner: scissor / rock" do
      expect(judge.decide_game_winner([jack,jane,jack])).to eq [jane]
    end

    it "raises an error of tie if there is no Game winner" do
      expect{judge.decide_game_winner([jack,john])}.to raise_error("No winner")
    end

  end

end
