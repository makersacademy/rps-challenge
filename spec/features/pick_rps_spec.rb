require 'spec_helper'

feature "Player choosing RPS" do

  scenario "Player 1 chooses first" do
    sign_in_and_play
    expect(page).to have_content "Player 1, please"
  end

  scenario "Player 2 chooses second" do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Player 2, please"
  end
end
