require 'game'

describe Game do
  let(:player)        { double :player, name: 'muhammad' }
  let(:subject)       { described_class.new(player) }

  it { is_expected.to be_an_instance_of described_class }

  it 'creates a new instance with player name' do
    expect(subject.player.name).to eq('muhammad')
  end

end
