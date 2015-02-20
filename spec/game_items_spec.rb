require 'game_items'

describe GameItems do

  let(:paper) {GameItems.new({paper: "paper"})}
  let(:rock) {GameItems.new({rock: "rock"})}
  let(:scissors) {GameItems.new({scissors: "scissors"})}

  it "can create a rock" do
    expect(rock.items[:rock]).to eq "rock"
  end

  it "can create some paper" do
    expect(paper.items[:paper]).to eq "paper"
  end

  it "can create a pair of scissors" do
    expect(scissors.items[:scissors]).to eq "scissors"
  end

end