require 'random'

describe Random_Weapon do
  subject { described_class.new }

  it 'selects a random option' do
    expect(subject.show).to satisfy { |value| ['rock', 'paper', 'scissors'].include?(value) }
  end
end
