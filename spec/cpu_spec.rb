require 'cpu'

RSpec.describe CPU do
  let(:subject) { described_class.new }

  it 'return a random choice' do
    allow(subject).to receive(:random) { "Scissors" }
    expect(subject.random).to eq("Scissors")
  end

  it 'start wit a score eq 10' do
    expect(subject.score).to eq(10)
  end 

  it 'reduce the score by 1' do
    subject.calc_score
    expect(subject.score).to eq(9)
  end
end
