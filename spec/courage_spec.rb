require 'courage'

describe Courage do

  let (:courage) { Courage.new("words_of_valour.csv") }

  it "has an internal array of axioms for valour" do
    expect { courage.codex }.to_not raise_error
  end

end
