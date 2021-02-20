require 'random'

describe Random_Choice do
  subject { described_class.new }

  it 'selects a random option' do
    expect(subject.spin).to satisfy { |value| ['rock', 'paper', 'scissors'].include?(value) }
  end
end
