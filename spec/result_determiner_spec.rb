require './lib/game'

describe ResultDeterminer do

  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }
  let(:player_3) { double(:player) }
  let(:rd) { described_class }

  before do
    allow(player_1).to receive_messages(:name => "Pietro", :choice => :rock)
    allow(player_2).to receive_messages(:name => "Andrea", :choice => :scissors)
    allow(player_3).to receive_messages(:name => "Jessica", :choice => :rock)
  end

  it 'can correctly determine a winner' do
    expect(rd.calculate(player_1, player_2)).to eq player_1.name
  end

  it 'can correctly determine a draw' do
    expect(rd.calculate(player_1, player_3)).to eq :draw
  end

end
