require 'opponent'

describe Opponent do
  subject(:opponent) { described_class.new }

  it 'initalizes with a choice' do
    allow(opponent).to receive(:choice).and_return("Rock")
    expect(opponent.choice). to eq("Rock")
  end
end
