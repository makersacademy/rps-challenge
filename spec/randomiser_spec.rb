require 'randomiser'

describe Randomiser do
  subject(:random) {Randomiser.new}

  it 'can pick Rock' do
    allow(random).to receive(:move).and_return('Rock')
    expect(random.move).to eq 'Rock'
  end
end
