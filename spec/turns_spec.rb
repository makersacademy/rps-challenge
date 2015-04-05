require 'turns'

describe Turns do
  it 'has a turns hash' do
    turns = described_class.new
    hash = { tally: 0 }
    expect(turns.tally).to eq hash
  end

  it 'keeps track of player wins' do
    turns = described_class.new
    hash = { player1: 0, player2: 0 }
    expect(turns.wins).to eq hash
  end

  it 'changes the tally score when someone plays' do
    player1 = double(:player1)

  end
end
