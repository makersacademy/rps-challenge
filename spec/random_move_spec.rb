require 'random_move'

describe RandomMove do
  subject(:random) {RandomMove.new}

  it 'can generate the move Rock' do
    allow(random).to receive(:move).and_return('Rock')
    expect(random.move).to eq 'Rock'
  end
end
