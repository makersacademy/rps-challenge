require 'game'

describe Game do

  it 'should have hash containing shapes and what they defeat' do
    expect(subject).to respond_to(:defeat)
  end

  it 'should have hash containing possible moves' do
    expect(subject).to respond_to(:moves)
  end
end
