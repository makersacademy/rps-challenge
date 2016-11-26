require 'player'

describe Player do

  subject(:player) {described_class.new("Johnny")}

  describe '#new' do

    it 'initializes with a name' do
      expect(player.name).to eq "Johnny"
    end

  end

  describe 'error handling' do

    it 'doesn\'t allow names to be anything except Strings' do
      message = "Player name must be a string"
      expect{ Player.new(23) }.to raise_error(RuntimeError, message)
    end

  end
end
