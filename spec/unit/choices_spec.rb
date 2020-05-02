require 'choices'

describe Choices do
  it 'has a list of choices' do
    expect(Choices::MOVES).to eq(['rock', 'paper', 'scissors', 'spock', 'lizard'])
  end
end
