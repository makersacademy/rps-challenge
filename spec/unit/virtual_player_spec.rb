require 'virtual_player'

describe VirtualPlayer do
  subject(:cpu){described_class.new}

  describe '#pick_play' do
    it 'picks an option' do
    expect(VirtualPlayer::Options).to include(cpu.pick_play)
    end
  end


end