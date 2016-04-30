require 'help_start'

describe HelpStart do
  #subject(:helpstart) { HelpStart.new }
  describe(".player_mode") do
    it("returns hash with '' when player_mode=='two' ") do
      expect(HelpStart.player_mode("two")).to eq HelpStart::TWO_PLAYERS
    end

    it("returns hash with 'readonly and computer' when player_mode is 'one' ") do
      expect(HelpStart.player_mode("one")).to eq HelpStart::ONE_PLAYER
    end

  end
end


