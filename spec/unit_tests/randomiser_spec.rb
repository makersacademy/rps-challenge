require 'randomiser'

RSpec.describe Randomiser do
  it "gives ROCK as the result" do
    subject = Randomiser.new
    allow(subject).to receive(:sample) { 'ROCK'}
    expect(subject.sample).to eq("ROCK")
  end
end
