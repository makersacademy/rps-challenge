require "ai"

describe AI do

  let (:hal) { AI.new }

  it "returns a random RPS choice" do
    results = []
    10000.times { results << hal.choice }
    expect(results).to include("Rock", "Paper", "Scissors")
  end

end
