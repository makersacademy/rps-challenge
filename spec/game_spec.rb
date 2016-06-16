require 'game'

describe Game do

subject(:game_win) { described_class.new( :rock, :scissors) }
subject(:game_lose) { described_class.new(:rock, :paper) }
subject(:game_draw) { described_class.new(:rock, :rock) }

describe '#outcome' do
  it 'checks if you have won' do
    expect(game_win.outcome).to eq('win')
  end

  it 'checks if you have lost' do
    expect(game_lose.outcome).to eq('lose')
  end

  it 'checks if you have drawn' do
    expect(game_draw.outcome).to eq('draw')
  end
end

end
