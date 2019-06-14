require 'cpu'

RSpec.describe CPU do
  let(:subject) { double(described_class.new) }

  it 'return a random choice' do
    allow(subject).to receive(:random) { "Scissor!" }
    expect(subject.random).to eq("Scissor!")
  end
end