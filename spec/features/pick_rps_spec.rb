require 'spec_helper'

feature "Player choosing RPS" do

  scenario "Expect next page to show choise" do
    sign_in_and_play
    click_button "Play"
    click_button "Rock"
    expect(page).to have_content 'You chose Rock'
  end

  scenario "Expect next page to show choise" do
    sign_in_and_play
    click_button 'Play'
    click_button 'Rock'
    expect(page).to have_content 'The computer chose'
  end

end
