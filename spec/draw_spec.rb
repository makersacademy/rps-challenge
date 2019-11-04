require 'draw'
describe Draw do
  subject(:logic) { described_class.new }
  it 'it returns rock' do
    srand 2
    expect(logic.draw).to eq 'Rock'
  end
  it 'it returns paper' do
    srand 3
    expect(logic.draw).to eq 'Paper'
  end
  it 'it returns scissors' do
    srand 1
    expect(logic.draw).to eq 'Scissors'
  end
end
