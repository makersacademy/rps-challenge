require 'AI'

describe AI do

  it "can return it's choice" do
    expect(%(rock paper scissors)).to include(subject.choice)
  end
end