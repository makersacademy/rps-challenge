# frozen_string_literal: true

describe 'Player Names Feature' do
  feature 'Players can enter their names and see them displayed' do
    scenario 'Player 1 enters their name' do
      WebHelper.input_player_1_name
      WebHelper.click_to_submit_player_names
      expect(page).to have_content "#{WebHelper::PLAYER_1_NAME} vs Computer"
    end
  end
end
