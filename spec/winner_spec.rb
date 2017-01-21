require './lib/winner'

describe Winner do
  subject(:winner) { described_class.new }

  it 'calculates who has won the game' do
    expect(winner).to respond_to(:result)
  end

end
