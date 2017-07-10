require './lib/game'

describe ResultDeterminer do

  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }
  let(:player_3) { double(:player) }
  let(:player_4) { double(:player) }
  let(:player_5) { double(:player) }
  let(:rd) { described_class }

  before do
    allow(player_1).to receive_messages(:name => "Pietro", :choice => :paper)
    allow(player_2).to receive_messages(:name => "Andrea", :choice => :rock)
    allow(player_3).to receive_messages(:name => "Jessica", :choice => :paper)
    allow(player_4).to receive_messages(:name => "")
    allow(player_5).to receive_messages(:name => "Pluto", :choice => :hammer)
  end

  it 'can correctly determine a winner - Paper vs Rock' do
    expect(rd.winning_name(player_1, player_2)).to eq player_1.name
  end

  it 'can correctly determine a draw - Paper vs Paper' do
    expect(rd.winning_name(player_1, player_3)).to eq :draw
  end

end
