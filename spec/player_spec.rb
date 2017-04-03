require 'player'

describe Player do
  let(:player) {described_class.new}

  describe '#input_name' do
    it 'gets the name of the player' do
      player.input_name("Alex")
      expect(player.name).to eq "Alex"
    end
  end
end
