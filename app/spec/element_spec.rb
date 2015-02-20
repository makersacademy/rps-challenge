require 'element'

describe Element do

  let(:rock)     { Element.rock                       }
  let(:paper)    { double :paper, name: "paper"       }
  let(:scissors) { double :scissors, name: "scissors" }
  
  it "should be a rock" do
    expect(rock.name).to eq("rock")
  end

  it "should beat scissors" do
    rock.beat(scissors)
    expect(rock.win).to eq(true)
  end

  it "should lose against paper" do
    rock.beat(paper)
    expect(rock.win).to eq(false)
  end
end