require "ai"

describe AI do

  let (:hal) { AI.new }

  it "returns a random RPS choice" do
    expect(hal.play).to eq("Rock").or eq("Paper").or eq("Scissors")
  end

end
