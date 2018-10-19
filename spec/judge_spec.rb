require "judge.rb"

describe Judge do

  let(:john){double :john, :increase_score => true, :get_move => "rock"}
  let(:jane){double :jane, :increase_score => true, :get_move => "paper"}
  let(:jack){double :jack, :increase_score => true, :get_move => "scissors"}

  subject(:judge){described_class.new()}

  it "reads file to get the valid moves" do
    expect(judge.moves.length).to be >= 3
  end

  it "raises an error of tie if all moves are played: scissor / rock / paper" do
    expect{judge.decide_winner([jack,john,jane])}.to raise_error("Its a tie")
  end

  it "check round winner: rock / paper" do
    expect(judge.decide_winner([john,jane])).to eq [jane]
  end

  it "check round winner: paper / scissor" do
    expect(judge.decide_winner([jane,jack])).to eq [jack]
  end

  it "check round winner: scissor / rock" do
    expect(judge.decide_winner([jack,john])).to eq [john]
  end

end
