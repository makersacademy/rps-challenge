require './lib/game_randomizer'

describe GameRandomizer do

  let(:random) {described_class.new}

  it "can provide randomly scissors, rock or paper" do
    expect(["Scissors","Paper","Rock"]).to include(random.randomize)
  end

  it "can return its random option" do
    expect(random.randomize).to eq(random.option)
  end

end
