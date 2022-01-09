require 'player'

describe Player do

  let(:player) { Player.new('Max') }

  it 'displays name' do
    expect(player.name).to eq 'Max'
  end

  describe '#save_choice' do
    it 'displays choice' do
      player.save_choice('scissors')
      expect(player.choice).to eq 'scissors'
    end
  end
end