require 'choices'

describe Choices do
  let(:choices) { Choices.new }

  it "during initialization an array called
  rps_array is created with r p and s" do
    expect(choices.rps_array).to eq(["Rock", "Paper", "Scissors"])
  end
end
