require 'help_view'

describe HelpView do
  context(".player_mode") do
    it("returns hash with '' when player_mode=='two' ") do
      expect(HelpView.player_mode("two")).to eq HelpView::TWO_PLAYERS
    end

    it("returns hash with 'readonly and computer' when player_mode is 'one' ") do
      expect(HelpView.player_mode("one")).to eq HelpView::ONE_PLAYER
    end
  end

  context(".game_mode") do
    it("returns empty string when game_mode is spock ") do
      expect(HelpView.game_mode("spock")).to eq HelpView::GAME_MODE[:spock]
    end

    it("returns style=display:none when game_mode is classic") do
      expect(HelpView.game_mode("classic")).to eq HelpView::GAME_MODE[:classic]
    end
  end
end


