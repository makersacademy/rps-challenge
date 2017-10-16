require 'computer'

describe Computer do
  subject(:subject) { described_class.new }
  it 'should return: rock, paper or scissors' do
    expect(['rock', 'paper', 'scissors']).to include(subject.choice)
  end
end
