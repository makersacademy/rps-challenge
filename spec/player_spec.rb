require 'player'

describe Player do
  DEFAULT_INPUT_NAME = "Xerxes"
  subject(:player) {described_class.new(DEFAULT_INPUT_NAME)}

  describe "initialize" do
    it 'initializes with a player name' do
      expect(player.name).to eq(DEFAULT_INPUT_NAME)
    end

  end

end
