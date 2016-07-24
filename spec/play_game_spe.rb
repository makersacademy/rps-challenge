require 'spec_helper'
require 'player'

feature "Playing agianst the computer" do
  scenario "Player selects rock" do
    sign_in
    click_link('Play the computer')
    click_button('Rock')
    expect(page).to have_content("Victor has been attacked")

  end
  scenario "Player selects paper" do
    sign_in
    click_link('Play the computer')
    click_button('Paper')
    expect(page).to have_content("Victor has been attacked")

  end
  scenario "Player selects scissors" do
    sign_in
    click_link('Play the computer')
    click_button('scissors')
    expect(page).to have_content("Victor has been attacked")

  end

end
