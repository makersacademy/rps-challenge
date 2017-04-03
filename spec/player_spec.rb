require 'player'

describe Player do
  DEFAULT_INPUT_NAME = "Xerxes"
  DEFAULT_GAME_CHOICE = "Rock"
  subject(:player) {described_class.new(DEFAULT_INPUT_NAME)}

  describe "initialize" do
    it 'initializes with a player name' do
      expect(player.name).to eq(DEFAULT_INPUT_NAME)
    end

  end

  describe "#make_choice" do
    it 'updates players choice' do
      player.make_choice(DEFAULT_GAME_CHOICE)
      expect(player.choice).to eq(DEFAULT_GAME_CHOICE)
    end
  end

end
