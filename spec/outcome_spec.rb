require './lib/Outcome.rb'

RSpec.describe Outcome do
  describe '#evaluate' do
    it 'evaluates outcome based on players choice' do
    expect(subject.evaluate("Rock", "Scissors")).to eq "YOU WIN"
  end

  it 'evaluates outcome based on players choice' do
  expect(subject.evaluate("Rock", "Rock")).to eq "IT'S A DRAW"
end
end
end
