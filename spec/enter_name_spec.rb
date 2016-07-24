require 'spec_helper'

feature "RPS" do
  scenario "player enters their name to register" do
    visit ('/')
  fill_in 'player_name', :with=> 'Bart'
  click_button('submit')
  expect(page).to have_content 'Bart'
  end
end
