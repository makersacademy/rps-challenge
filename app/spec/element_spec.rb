require 'element'

describe Element do

  let(:rock)     { Element.rock                                         }
  let(:paper)    { double :paper, name: "paper", loses_to: "scissors"   }
  let(:scissors) { double :scissors, name: "scissors", loses_to: "rock" }
  
  it "should be a rock" do
    expect(rock.name).to eq("rock")
  end

  it "should beat scissors" do
    rock.confront(scissors)
    expect(rock.win).to eq(true)
  end

  it "should lose against paper" do
    rock.confront(paper)
    expect(rock.win?).to eq(false)
  end
end