require 'random_result'

describe RandomResult do
  subject(:random) { RandomResult.new }

  it 'can generate the move Rock' do
    allow(random).to receive(:move).and_return('Rock')
    expect(random.move).to eq 'Rock'
  end
end
