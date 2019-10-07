require 'computer_move'

describe ComputerMove do

  subject (:x) {ComputerMove.new}

  it 'generates random computer move' do
    allow(x).to receive(:random_move).and_return('Rock')
    expect(x.random_move).to eq 'Rock'
  end
end
