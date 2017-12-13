require 'opponent'

describe Opponent do
  it 'should have a method that randomly generates rock paper or scissors' do
    expect(subject).to respond_to(:random_generator)
  end
end
