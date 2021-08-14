require 'rps'

describe Rps do

  subject { described_class.new(:move) }

  it 'takes move value attribute' do
    expect(subject.move).to eq :move
  end
end