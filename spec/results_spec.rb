require 'results'

describe Results do
  let(:results) { described_class.new }

  it 'gives the winner of a rocks, paper, scissor game' do
    expect(results.check('Scissor', 'Paper')).to eq 'Player 1'
  end
end
