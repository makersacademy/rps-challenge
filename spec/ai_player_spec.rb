require 'spec_helper'

describe AIPlayer do
  it 'has an automatically generated name' do
    expect(subject.name).to eq 'R1D1'
  end

  it 'know what game it is playing' do
    expect(subject.game).to eq :standard
  end

  it 'randomly chooses hand' do
    expect(subject.choice).to eq :rock || :paper || :scissors
  end
end