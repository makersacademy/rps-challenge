require 'random_move'

describe RandomMove do

  moves_arr = ['rock', 'paper', 'scissors']

  random_move = described_class.new(moves_arr)

  it 'returns a random move' do
      allow(moves_arr).to receive(:sample) { 'paper' }
      expect(random_move.move).to eq 'paper'
  end

end
