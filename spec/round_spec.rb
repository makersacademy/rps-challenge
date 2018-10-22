require "round.rb"

describe Round do

  let(:john){double :john, :increase_score => true, :define_move => true}
  let(:jane){double :jane, :increase_score => true, :define_move => true}
  let(:judge){double :judge, :decide_round_winner=> [john]}

  before (:each) do
    @players = [john, jane]
    # subject(:round){described_class.new}
  end

  it "check round winner" do
    expect(judge).to receive(:decide_round_winner)
    subject.get_round_winner(@players,judge)
  end

  it "requests winners scores to be increments" do
    expect(john).to receive(:increase_score)
    subject.get_round_winner(@players, judge)
  end

  it "updates moves for the player" do
    expect(john).to receive(:define_move)
    subject.player_plays(john, "rock")
  end

end
