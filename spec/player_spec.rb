require 'player'

describe Player do

  let(:player) { Player.new('Max') }

  it 'displays name' do
    expect(player.name).to eq 'Max'
  end

  describe '#save_choice' do
    it 'saves choice' do
      expect(player.save_choice('scissors')).to eq 'scissors'
    end
  end
end