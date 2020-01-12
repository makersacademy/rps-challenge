require 'results'

describe Results do
  let(:results) { described_class.new }

  it 'Declares the winner of rock paper Scissors' do
    expect(results.check('Scissor', 'Paper')).to eq 'User 1'
  end
end
