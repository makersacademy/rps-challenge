require 'ai'

describe AI do

  it "can return it's choice" do
    expect(%(rock paper scissors)).to include(subject.choice)
  end

  it "can return it's result consitantly" do
    result = []
    1000.times { result.push(subject.choice) }
    expect(result.uniq.size).to eq 1
  end

  it "can return its name" do
    expect(subject.name).to eq 'Computer'
  end
end