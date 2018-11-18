require 'random'
require 'choices'

describe RandomRps do
  let(:random) { RandomRps.new }
  let(:random1) { random1 = double("random1",
    :rock_paper_scissors => "draw")
  }


  it "expects an instnce of choices to be create during initliazition which
  contains a rps_array" do
    expect(random.choice.rps_array).to eq(["Rock", "Paper", "Scissors"])
  end

  it "checks that rock paper scissors method works " do
    player1 = random.sample_rps_array
    player2 = random.sample_rps_array
    expect(random1.rock_paper_scissors(player1, player2)).to eq("draw")
  end
end
