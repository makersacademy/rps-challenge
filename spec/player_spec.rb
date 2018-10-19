require 'player'

describe Player do
  # subject(:datechecker) { DateChecker.new("10/10/2018") }

  describe 'set name' do
    it 'takes the name and returns it' do
      player = Player.new("Clare")
      expect(player.name).to eq "Clare"
    end
  end
end
