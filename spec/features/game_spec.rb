require 'game'

describe Game do

  let(:player){ double :player }
  let(:player_name){ double :player_name }
  let(:computer){ double :computer }
  subject{ described_class.new(player_name, player, computer)}

  before do

    allow(player).to receive(:new).with(player_name).and_return(player)
    allow(computer).to receive(:new).and_return(computer)

  end

  it 'Should return player' do
    expect(subject.player).to eq player
  end


  it 'Should return computer' do
    expect(subject.computer).to eq computer
  end

end
