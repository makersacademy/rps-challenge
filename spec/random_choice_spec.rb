require 'random_choice'

describe RandomChoice do
  let(:choices) { %w(rock paper scissors) }
  it 'returns a random choice of rock paper or scissors' do
    expect(choices.include?(RandomChoice.choice)).to eq(true)
  end
end
