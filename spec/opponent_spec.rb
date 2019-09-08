require 'spec_helper'

describe Opponent do
  let(:opponent) { described_class.new }

  it 'selects a random weapon' do
    srand(4)
    expect(opponent.hand).to eq 'Scissors'
  end
end
