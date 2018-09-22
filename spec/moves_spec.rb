require 'moves'

describe Moves do
  it 'contains the moves a player can choose from' do
    expect(subject.moves).to eq([:rock, :paper, :scissors])
  end
end