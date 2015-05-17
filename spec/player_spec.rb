require 'player'

describe Player do
  it "can take a turn" do
    subject.take_a_turn "Rock"
    expect(subject.check_turn).to eq "Rock"
  end


  it "starts as not winning" do
    expect(subject.winner?).to be_falsey
  end

  it "can win" do
    subject.add_round_win
    subject.add_round_win
    subject.wins
    expect(subject.winner?).to be_truthy
  end

  it "has a number of round wins" do
    expect(subject.check_round_wins).to eq 0
  end

  it { is_expected.to respond_to(:random_selection) }

  it "can make a random selection for computer players" do
    allow(subject).to receive(:random_selection).and_return("Rock")
    expect(subject.random_selection).to eq "Rock"
  end
end