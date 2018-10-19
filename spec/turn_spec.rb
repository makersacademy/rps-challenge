require 'turn'

describe Turn do
  let(:turn) { Turn.new(name1, name2) }
  let(:name1) { "Caitlin" }
  let(:name2) { "James" }

  it 'intializes being name1s turn' do
    expect(turn.who).to eq name1
  end

  it 'swaps the turn after name1 has gone' do
    turn.move
    expect(turn.who).to eq name2
  end
end
