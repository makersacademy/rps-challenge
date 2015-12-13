require 'player'

describe Player do
  let(:player1) { described_class.new 'Jon'}

  it 'returns it/s name' do
  expect(player1.name).to eq 'Jon'
  end
  
end
