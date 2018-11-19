require 'random_move'
require 'choices'

describe RandomMove do
  let(:random) { RandomMove.new }
  let(:random_double) { double("random_double",)
  }
  let(:choice) { Choices.new}
  let(:choice_double) { double("choice_double",
    :rps_array => "Rock",
    )
  }


  it "expects an instnce of choices to be create during initliazition which
  contains a rps_array" do
    expect(random.choice.rps_array).to eq(["Rock", "Paper", "Scissors"])
  end

  it "checks that rock paper scissors method works can draw " do
    expect(random.rock_paper_scissors("Rock", "Rock")).to eq("draw")
  end

  it "checks that rps sample_array returns a value (rock)" do
    random = RandomMove.new(choice_double)
    expect(random.choice.rps_array).to eq("Rock")
  end
end
