require 'result'

describe Result do
  let(:rock_player) {double(:Rplayer, name: "Brock", choice: "Rock")}
  let(:scissor_player) {double(:Pplayer, name: "Edward", choice: "Scissors")}
  let(:paper_player) {double(:Splayer, name: "Piere", choice: "Paper")}

  it "expect rock to beat scissors" do
    expect(subject.outcome(rock_player, scissor_player)).to eq rock_player
    expect(subject.outcome(scissor_player, rock_player)).to eq rock_player
  end
  it "expect scissors to beat paper" do
    expect(subject.outcome(paper_player, scissor_player)).to eq scissor_player
    expect(subject.outcome(scissor_player, paper_player)).to eq scissor_player
  end
  it "expect paper to beat rock" do
    expect(subject.outcome(rock_player, paper_player)).to eq paper_player
    expect(subject.outcome(paper_player, rock_player)).to eq paper_player
  end
  it "expect the same choice to return draw" do
    expect(subject.outcome(rock_player, rock_player)).to eq "draw"
  end
end
