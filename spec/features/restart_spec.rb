require 'spec_helper'

feature "Restarts counter" do

  before do
    sign_in_and_play
  end

  scenario "starts counter again" do
    click_button 'Rock'
    click_button 'Replay'
    click_button 'Rock'
    click_button 'Replay'
    click_button 'Rock'
    click_button 'Replay'
    click_button 'Restart'
    expect(page).to have_content("Player has 0 wins")
    expect(page).to have_content("The computer has 0 wins")
  end
end
